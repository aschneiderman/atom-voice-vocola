# Voice commands for atom

Test Command = "This Is a Test Command";  # see if working on laptop

include folders.vch;
include letters.vch;

# Commands for developing D3: D3 visualizations, D3 Sandwiches
Save and Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Ctrl+r};	
Save and Really Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}") {Ctrl+Shift+r};
Save and Run =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Up}{Enter};

# File commands
Find (File | Document) = {Ctrl+t};
Save As = {Ctrl+Shift+s};
Next Window = {Ctrl+Tab};
Last Window = {Ctrl+Shift+Tab};
Latest File = {Ctrl+Shift+t};
(Tree View | List Files) = {Alt+o};	# NOTE: to make this work, I had to create a new keyboard shortcut in Atom (my personal keymap.cson)


# --- Text navigation commands ------------------------------------
<delimiters> := (Quote = '"' | 'Double Quote' = '"' | 'Single Quote' = "'" | Comma = ',' | 'Equal Sign' = '=' | Equals = '=' 
	| Period = '.' | Colon = ':' | 'Semi-Colon' = ';' | Hyphen = '-' |  Underscore = '_' | Slash = '/'
	| Paren = "(" | "Close Paren" = ")" | Parentheses = "(" | "Open Parenthesis" = "(" | "Close Parentheses" = ")"
	| Bracket = '[' | "Close Bracket" = ']' | Brace = '{' | 'Close Brace' = '}'	);

Line 1..200 = {Ctrl+g} $1 {Enter};
(Left = 'b' | Right = 'f') Word = {Alt+$1};
Top = {Ctrl+Home};
Bottom = {Ctrl+End};
(Find = 'Right' | 'Insert After' = 'Right' | 'Insert Before' = 'Left') (Next = 'Enter' | Last = 'Shift+F3') <delimiters> 
		= {Ctrl+f} $3 {$2} {Esc}   Wait(100) {$1};
Insert (Before = 'Left' | After = 'Right') <delimiters> =  {Ctrl+f} $2 {Enter} {Esc}   Wait(100) {$1};
Insert (Before = 'Left' | After = 'Right') 1..20 <delimiters> =  {Ctrl+f} $3 {Enter} {Esc}   Wait(100) {F3_$2} {Shift+F3} Wait(100) {$1};
Insert (Before = 'Left' | After = 'Right') Enda <delimiters> = {End} {Ctrl+f} $2 {Enter} {Esc} {Shift+F3}  Wait(100) {$1};

Fine Alpha <letters> = {Ctrl+f} $1 {Enter} {Esc}   Wait(100) {Left};
Insert (Before = 'Left' | After = 'Right') Alpha <letters> =  {Ctrl+f} $2 {Enter} {Esc}   Wait(100) {$1};
Fine Number 0..9 = {Ctrl+f} $1 {Enter} {Esc} Wait(100) {Right};
(Find | Insert) Again = {F3} {Right};
(Find | Insert) Again 1..20 Times = {F3_$1} {Right};

(Set | Add | Clear | Hide | Delete) Bookmark = {Ctrl+Alt+F2};
(Next = 'F2' | Last = 'Shift+F2') Bookmark = {$1};


# --- Editing commands ----------------------------------------
Select Line = {Ctrl+l};
Select (Next = 'Down' | Forward = 'Down' | Last = 'Up' | Back = 'Up' | Previous = 'Up') 1..20 Lines = {Home} {Shift+$1_$2};
Move Line (Up | Down) 1..20  = {Ctrl+$1_$2};
Add 1..20 (Lines = 'Down' | Line = 'Down' | Pages = 'PgDn' | Page = 'PgDn') = {Shift+$2_$1};
Start Adding 1..20 Lines = {Home}{Shift+Down_$1};


Select between (Delimiters | Brackets | Tags) ={Ctrl+m} {Ctrl+Alt+m};
Delete between Tags = {Ctrl+m} {Ctrl+Alt+m}  {Del};
Delete Tags = {Ctrl+Alt+F4};
Replace With (Header | Heading) 1..7 = {Ctrl+Alt+F4}  '<h' $2 '>' {End} '</h' $2 '>' {Home};
Replace With (para = 'p') = {Ctrl+Alt+F4} '<' $1 '>' {End} '</' $1 '>';


Delete Word = {Ctrl+Del};
Delete 1..20 Words = {Ctrl+Del_$1};
Delete (Back | Last) Word = {Ctrl+Backspace};
Delete (Back | Last) 1..20 Words = {Ctrl+Backspace_$2};
Delete Enda Word = {End} {Ctrl+Backspace};
Kill Word = {Ctrl+Backspace}{Ctrl+Del};

(Delete Line | Dede) = {Ctrl+Shift+k};
Delete 1..20 Lines = {Ctrl+Shift+k_$1};
(Cut = 'x' | Paste = 'v' | Copy = 'c') That = {Ctrl+$1};

Comment (That | Line) = {Ctrl+/};
Comment 1..20 Lines = {Home} {Shift+Down_$1} {Ctrl+/};

Replace = {Ctrl+f};
Replace All = {Ctrl+Enter};

(Join = 'j' | Indent = ']' | Dedent = '[')  That = {Ctrl+$1};


# --- Commands to create code/tags -------------------------------------------
# NOTE: basic HTML commands are stored in my global Vocala commands

Start (	# HTML commands
	'HTML page' = 'html' | pre = "pre" | 'Comment' = 'comment-html'
	| div = 'div' 
	| 'class example' = 'class-example'		# Used in A Taste of D3

	# D3 Recipe commands
	| 'Recipe Page' = 'recipe-page' | 'Recipe Row' = 'recipe-row' 
	| 'Recipe Toy' = 'recipe-toy' | Toy = 'recipe-toy'
	| 'Bold ID'

	# D3 and JavaScript commands
	| Console = 'console' | Log = 'console'
	| Var = 'variable' | Variable = 'variable'
	# Coffeescript commands
	| Snippet = 'my-snippet' 
	| 'Fix Line' = 'fix-current-line' | 'Fix Current Line' = 'fix-current-line'
) = $1 {Tab};

Stop (	#HTML commands
	'div comment' = 'comment-div-end' |  Comment = 'comment-html-end' | 'div' = 'div-end'
) = $1 {Tab};

# HTML commands
Dot HTML = '.html';
Start (Header | Heading) 1..7 = h $2 {Tab};
Add (Header | Heading) 1..7 =  '<h' $2 '>' {End} '</h' $2 '>';
Add (para = 'p') =  '<' $1 '>' {End} '</' $1 '>';

# D3 Recipe commands
Pre-Format Code =  {Ctrl+Alt+F5};
Reload Atom = {Ctrl+s} Wait(100)  {Shift+Ctrl+Alt+F5};
Command Palette = {Ctrl+Shift+p};
Keyboard Shortcuts = {Ctrl+.};
Run Specs = {Ctrl+Alt+p};
Show Console = {Ctrl+Alt+i};



# D3 commands
Paste Function = 'function ' {Ctrl+v} ' {' {Enter} {Enter} '};' {Up};

# Coffeescript commands

# Python commands


# --- D3 commands -------------------------------------------


# --- Python commands -------------------------------------------


# --- Coffeescript commands -------------------------------------------