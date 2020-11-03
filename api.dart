Future<ApiResponse> runClient(String methodUri, Object body,
	{bool includeAuth = false, bool methodGet = false}) async {
	var httpClient = new HttpClient();
	var request;
	if (!methodGet) {
		request = await httpClient
			.postUrl(Uri.parse(globals.baseUrl + methodUri));
	}
	else {
		request = await httpClient
			.getUrl(Uri.parse(globals.baseUrl + methodUri));
	}
	request.headers.set('content-type', 'application/json');
	if (includeAuth && globals.currentTokenGetResponse != null &&
		globals.currentTokenGetResponse.value != null) {
		request.headers
			.set(
			'Authorization', 'Bearer ${globals.currentTokenGetResponse.value}');
	}
		print(json.encode(body));
		if (body != null) request.add(utf8.encode(json.encode(body)));
		var response = await request.close();
		httpClient.close();
		var wrappedResponse = await ApiResponse.fromHttpResponse(response);
		print(wrappedResponse.data);
		return wrappedResponse;
	}
