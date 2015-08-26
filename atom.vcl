# Voice commands for atom

include folders.vch;
include letters.vch;


Reload Atom = {Shift+Ctrl+Alt+F5};

Find (File | Document) = {Ctrl+t};
Save As = {Ctrl+Shift+s};
Save and Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Ctrl+r};

<delimiters> := (Quote = '"' | 'Single Quote' = "'" | Comma = ',' | 'Equal Sign' = '=' | Equals = '=' 
	| Period = '.' | Colon = ':' | 'Semi-Colon' = ';' | Hyphen = '-' |  Underscore = '_'
	| Paren = "(" | "Close Paren" = ")"
	| Bracket = '[' | "Close Bracket" = ']' | Brace = '{' | 'Close Brace' = '}'	);

# --- Navigation commands ------------------------------------
Line 1..200 = {Ctrl+g} $1 {Enter};
(Left = 'b' | Right = 'f') Word = {Alt+$1};
Top = {Ctrl+Home};
Bottom = {Ctrl+End};
(Find = 'Right' | 'Insert After' = 'Right' | 'Insert Before' = 'Left') (Next = 'Enter' | Last = 'Shift+F3') <delimiters> 
		= {Ctrl+f} $3 {$2} {Esc}   Wait(100) {$1};
Insert (Before = 'Left' | After = 'Right') <delimiters> =  {Ctrl+f} $2 {Enter} {Esc}   Wait(100) {$1};
Insert (Before = 'Left' | After = 'Right') 1..20 <delimiters> =  {Ctrl+f} $3 {Enter} {Esc}   Wait(100) {F3_$2} {Shift+F3} Wait(100) {$1};
Insert (Before = 'Left' | After = 'Right') Enda <delimiters> = {End} {Ctrl+f} $2 {Enter} {Esc} {Shift+F3}  Wait(100) {$1};

Fine Alpha <letters> = {Ctrl+f} $1 {Enter} {Esc}   Wait(100) {Right};
Insert (Before = 'Left' | After = 'Right') Alpha <letters> =  {Ctrl+f} $2 {Enter} {Esc}   Wait(100) {$1};
Fine Number 0..9 = {Ctrl+f} $1 {Enter} {Esc} Wait(100) {Right};
Find Again = {F3} {Right};
Find Again 1..20 Times = {F3_$1} {Right};

Find Symbol = {Ctrl+r};

(Set | Add | Clear | Hide | Delete) Bookmark = {Ctrl+Alt+F2};
(Next = 'F2' | Last = 'Shift+F2') Bookmark = {$1};

Next Window = {Ctrl+Tab};
Last Window = {Ctrl+Shift+Tab};


# --- Editing commands ----------------------------------------
Select Line = {Ctrl+l};
Select (Next = 'Down' | Last = 'Up') 1..20 Lines = {Home} {Shift+$1_$2};
(Join = 'j' | Indent = ']' | Dedent = '[')  That = {Ctrl+$1};
Move Line (Up | Down) 1..20  = {Ctrl+$1_$2};



Delete Word = {Ctrl+Del};
Delete 1..20 Words = {Ctrl+Del_$1};
Delete (Back | Last) Word = {Ctrl+Backspace};
Delete (Back | Last) 1..20 Words = {Ctrl+Backspace_$2};
Delete Enda Word = {End} {Ctrl+Backspace};

(Delete Line | Dede) = {Ctrl+Shift+k};
Delete 1..20 Lines = {Ctrl+Shift+k_$1};
(Cut = 'x' | Paste = 'v' | Copy = 'c') That = {Ctrl+$1};

Comment (That | Line) = {Ctrl+/};
Comment 1..20 Lines = {Home} {Shift+Down_$1} {Ctrl+/};

Select between (Delimiters | Brackets) ={Ctrl+m} {Ctrl+Alt+m};
Delete Tags = {Ctrl+Alt+F4} {Up};




# --- Code commands -------------------------------------------
Start (Item = 'li' | List = 'ul' | HTML = 'html' | pre = "pre"
	| 'Bold ID' = 'bold-id' | 'Input' = 'ds-input-text'
	| Snippet = 'snip' | 'Recipe Row' = 'recipe-row' | 'Recipe Play' = 'recipe-play') = $1 {Tab};
Start (para = '<p>' ) = $1;
Add (para = 'p') = {Home} '<' $1 '>' {End} '</' $1 '>';
Replace With (para = 'p') = {Home} {Ctrl+Alt+F4}  {Up} {Home} '<' $1 '>' {End} '</' $1 '>';

Start (Header | Heading) 1..7 = h $2 {Tab};
Add (Header | Heading) 1..7 = {Home} '<h' $2 '>' {End} '</h' $2 '>';
Replace With (Header | Heading) 1..7 = {Home} {Ctrl+Alt+F4}  {Up} {Home} '<h' $2 '>' {End} '</h' $2 '>' {Home};
Mid HREF = '">';

Paste Function = 'function ' {Ctrl+v} ' {' {Enter} {Enter} '};' {Up};

# TO ADD:
# adding HTML comments, using a snippet

Shortcut Keys = {Ctrl+Shift+p};

