import 'package:facebook/core/app_assets.dart';
import 'package:facebook/core/app_theme.dart';
import 'package:facebook/login_screen/widgets/login_form.dart';
import 'package:material_ui/material_ui.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                spacing: size.height * 0.03,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: size.height * 0.10),
                  Image.asset(
                        AppAssets.facebooklogo, height: size.height * 0.10),

                  const LoginForm(),
                  TextButton(onPressed: () {}, child: Text('Forget Password')),
                  SizedBox(height: size.height * 0.08),

                  ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.white,
                        textStyle: TextStyle(
                            color: AppTheme.primary, fontSize: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(color: AppTheme.primary),
                        )
                    ), child: Text('Create Account'),),
                  Image.asset(AppAssets.metaLogo, height: size.height * 0.05,),

                ],
              ),
            ),
          ),
        )) ;
  }
  
}