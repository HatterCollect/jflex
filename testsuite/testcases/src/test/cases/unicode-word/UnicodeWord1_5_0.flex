%%

%unicode 5.0
%public
%class UnicodeWord1_5_0

%type int
%standalone

%include src/test/resources/common-unicode-enumerated-property-java

%%

<<EOF>> { printOutput(); return 1; }
\W { setCurCharPropertyValue("Not-Word"); }
[^\W] { setCurCharPropertyValue("Word"); }