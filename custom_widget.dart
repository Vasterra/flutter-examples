static returnCustomTextFormField( {bool password,String prefixText,IconData icon,TextInputType inputType,TextEditingController controller}) {
    return  new  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 60.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
        padding:
        EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
            data: ThemeData(
              hintColor: Colors.transparent,
            ),
            child: Padding(padding: EdgeInsets.only(left:3),child:  TextFormField(
              obscureText: password,
              controller: controller,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: prefixText,
                  icon: Icon(
                    icon,
                    color: Colors.black38,
                  ),
                  labelStyle: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Sans',
                      letterSpacing: 0.3,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600)),
              keyboardType: inputType,
            ),
            )
        ),
      ),
    );
  }
