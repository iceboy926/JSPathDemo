require('UIColor')
defineClass('ViewController',
            {
                test : function()
                {
                    self.label().setText("label的text被改掉了");
                    self.textLabel().setText("textLable 的值修改了");
                },
            
            
                changeBtnColor :function()
                {
                    var red = UIColor.redColor();
                    var white = UIColor.whiteColor();
                    var UIControlStateNormal = 0;
            
                    self.changeBtn().setTitle_forState("修改后的按钮", UIControlStateNormal);
                    self.changeBtn().setTitleColor_forState(white, UIControlStateNormal);
                    self.changeBtn().setBackgroundColor(red);

            
                    var UIControlEventTouchUpInside = 1<<6;
            
                    self.changeBtn().addTarget_action_forControlEvents(self, "changeAction", UIControlEventTouchUpInside);
                },
            
                changeAction :function()
                {
            
                    var alert = require('UIAlertView').alloc().initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("脚本", "执行的服务器的更新脚本文件", self, "确定", null);
                    alert.show();
                }
            
            }
)