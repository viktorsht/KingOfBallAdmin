import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import '../../../../../design_system/widgets/widget_text_app.dart';
import '../../../../design_system/colors/colors_app.dart';
import '../../../../design_system/icons/icons_app.dart';
import '../../../../design_system/images/images_app.dart';
import '../../../../design_system/widgets/widget_form_field.dart';
import '../../../../design_system/widgets/widget_loading.dart';
import '../../../../shared/api/state_response.dart';
import '../../../routes/routes_app.dart';
import '../../shared/components/password_look.dart';
import '../controllers/login_controller.dart';
import '../models/login_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  
  bool isViewPassword = false;
  final formKey = GlobalKey<FormState>();
  FormState get form => formKey.currentState!;

  final colors = ColorsAppDefault();

  void showSnackBar(String message){
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      backgroundColor: colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final user = LoginModel.empty();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LoginController>(context);
    void setIsViewPassword(){
      setState(() {
        isViewPassword = !isViewPassword;
      });
    }
    //final heightRegister = MediaQuery.of(context).size.height * 0.2;
    //final loginController = LoginController();
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Scaffold(
        backgroundColor: colors.green,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImagesApp.user),
                const SizedBox(height: 10,),
                const WidgetTextApp(widgetText: 'Login',),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: WidgetFormField(
                    hint: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    prefix: Image.asset(IconsApp.email),
                    value: user.email.toString(),
                    validator: (v) => user.email.validator(),
                    onChanged: user.setEmail,
                  ),
                ),
                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: WidgetFormField(
                    hint: 'Senha',
                    keyboardType: TextInputType.emailAddress,
                    prefix: Image.asset(IconsApp.password),
                    obscure: !isViewPassword,
                    value: user.password.toString(),
                    validator: (v) => user.password.validator(),
                    onChanged: user.setPassword,
                    suffix: PasswordLook(
                      onPressed: setIsViewPassword,
                      iconData: isViewPassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye_rounded,
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Observer(
                  builder: (_){
                    return controller.stateController is LoadingState || controller.stateTeamController is LoadingState
                    ? const WidgetLoading(width: 6, thickness: 1) 
                    : TextButton(
                      onPressed: () async {
                        final valid = form.validate();
                        if(valid) {
                          await controller.login(user);
                          if(controller.stateController is SucessState){
                            await controller.userIdMe();
                            final team = await controller.checkTeamVirtual();
                            if(controller.stateTeamController is SucessState){
                              //final cardHome = CardProfileController();
                              //cardHome.setTeamGameModel(team);
                              Modular.to.navigate(RoutesModulesApp.routerStartNavigationBarModule);
                            }
                            else if (controller.stateTeamController is ErrorState){
                              Modular.to.navigate(
                                RoutesModulesApp.routerTeamVirtualModule, 
                                arguments: int.parse(controller.idUser)
                              );
                            }
                          }
                          else{
                            showSnackBar('Email ou senha incorretos');
                          }
                        }
                        else{
                          showSnackBar('Campos inválidos');
                        }
                      }, 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const WidgetTextApp(widgetText: "Entrar",),
                          const SizedBox(width: 10,),
                          Image.asset(ImagesApp.entrarWhite),
                        ],
                      ),
                    );
                  }
                ),
                const SizedBox(height: 16,),
                /*Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: (){
                      Modular.to.navigate(RoutesModulesApp.routerRegisterModule);
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Não tenho conta: ",
                          style: TextStyle(
                            fontSize: 16,
                            color: colors.white
                          ),
                        ),
                        Text(
                          "Registrar-se",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}