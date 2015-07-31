# Voice commands for excel

include numbers.vch;

#data warehouse commands
The Data Warehouse = "SQL5SV";
Connect to (Data Warehouse | It) = {Alt}a x Wait(100) d {Enter} Wait(100) {Enter};
Go There = {F6}  Wait(100) {Tab};

#Timesheet commands
Find Anders = {Ctrl+f} Wait(100) "Anders" {Enter} {Esc};
Normal Timesheet = "X" {Tab} Wait(100) "X" {Tab} Wait(100) "X" {Tab} Wait(100) "X" {Tab} Wait(100) "X" {Tab};

Grab Down <numbers> = {Shift+Down_$1};
Fill Down <numbers> = {Shift+Down_$1}  {Alt}h fi d;


Bottom = {Ctrl+Down};
Top = {Ctrl+Up} {Down};
(Poo-Owm | Homa) = {Tab} {Home};


Print Preview = {Alt+f}w v;

Latest File = {Alt}f r 1;
(List Files | File List) = {Alt}f r;

[Set] Landscape = {Alt} p o Wait(100) {Down} {Enter};


Visible Cells = {Alt+e}g Wait(100) {Alt+s}{Alt+y} Wait(100) {Enter};
Paste Special ={Alt+e} st {Enter};
Hide Column = {Ctrl+0};
Hide 1..15 Columns = {Ctrl+space} {Shift+Right_$1}{Shift+left}{Ctrl+0};
Show Columns = {Alt+o}cu;

Line = {Alt+e}dr {Enter};


Clean Paste = {Alt+e} st {Enter};

<numbers> (Left | Right | Up | Down) = {$2_$1};

Fill (Down='d' | Right = 'r') = {Ctrl+$1};

Grab <numbers> Columns = {Ctrl+space} {Shift+Right_$1} {Shift+left};
Delete <numbers> Columns = {Ctrl+space} {Shift+Right_$1} {Shift+left} {Alt}h dc;
Row Height = {Alt+o} re;
Column Width = {Alt}h o w;



Sort = {Alt+d} s;
Auto Filter = {Alt+d} f f;
Subtotals = {Alt+d} b;
Insert (Row = 'r' | Column = 'c' | Sheet = 'w') = {Alt+i} $1;

(Autoformat | Autoformat Column ) = {Alt+o}ca;
Format (Column = 'w' | Row = 'h') Width = {Alt} h o $1;
Format (Cells | Cell) = {Alt+o}e;
Cell Borders = {Alt} h b;
Format Number = {Alt+o}e Wait(100) {Alt+c}n {Alt+d}0  Wait(100) {Alt+u}{Enter};
Format (General = '~' | Date = '#' | Percent = '%') = {Ctrl+Shift+$1};

Insert Page Break = {Alt+i}b;

Set (Page | Print) Area = {Alt} p r s;

NexSheet = {Ctrl+PgDn};
LassSheet = {Ctrl+PgUp};

Rename (sheet | worksheet) = {Alt+o}hr;
Insert (Sheet | Worksheet) = {SHIFT+F11};


# Macro development commands
[Start] (Visual Basic | VBA) = {Alt+F11};
Run It = {Ctrl+Shift+l};


Microsoft Visual Basic for Applications:
	Reload = {Alt+q} Wait(100) {Ctrl+Shift+l};
	(Exit Code | Close Editor) = {Alt+q};
	Code Window = {F7};
	Object Browser = {F2};
	Project Window = {Ctrl+r};
	Immediate Window = {Ctrl+g};
	Next Window = {Ctrl+tab};
	Last Window = {Ctrl+Shift+Tab};

	Find  <_anything> = {Ctrl+f} $1 {Enter} Wait(100) {Esc};
	Find Again = {F3};
	Next Procedure = {Ctrl+Down};
	Last Procedure = {Ctrl+Up};

	Run = {F5};	
	Run Step = {F8};
	Stop Running = {Ctrl+break};
	(Set | Clear) Breakpoint = {F9};
	Clear All Breakpoints = {Shift+F9};

	(shortcut | Shortcuts) Menu = {Shift+F10};

	#VBA commands
	New Variable = "Dim As Variant"  Wait(100) {Home} {Right_4};		# NOTE: Variant = any data type
	(Dim | Define) as (Variant | Object | Boolean | Integer | Long | Currency | Date | String) = "Dim  As " $2 Wait(100) {Home} {Right_4};
	MessageBox = 'MsgBox ';
	Range Value = 'Range("").Value' {Left_8};



#{Alt+F5} runs the error handling code or returns the error to the calling procedure
#{Alt+F8} steps into the error handler returns error to the calling procedure
