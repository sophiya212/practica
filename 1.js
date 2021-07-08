var wsh = WScript.CreateObject("WScript.Shell");
// Запускаем экземпляр приложения «Калькулятор»
var wse = wsh.Exec("%SystemRoot%\\System32\\calc.exe");
// Приостанавливаем выполнение потока
WScript.Sleep(1000);
// Метод AppActivate делает активным окно приложения
wsh.AppActivate(wse.ProcessID);
WScript.Sleep(1000);
wsh.SendKeys("{ENTER}");
exit 0;