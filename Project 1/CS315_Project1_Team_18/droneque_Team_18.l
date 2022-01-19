%option main
WHITESPACE [ \t]+
NEWLINE (\r\n|\r|\n)
IDENTIFIER [A-Za-z][_A-Za-z0-9]*
LB \{
RB \}
LP \(
RP \)
COMMA \,
END_STATEMENT \;
SINGLE_COMMENT_LINE \#.*
MULTIPLE_COMMENT_LINE \#\*(.|\n)*\*\#
COMMENT_SIGN \#
ASSIGN_OP \=
ADDITION_OP \+
SUBTRACTION_OP \-
MULTIPLICATION_OP \*
DIVISION_OP \/
MODULO_OP \%
INCREMENT_OP \+\+
DECREMENT_OP \-\-
EXPONENTIATION_OP \** 
ADDITION_ASSIGNMENT_OP \+\=
SUBTRACTION_ASSIGNMNET_OP \-\=
DIVISION_ASSIGNMENT_OP \/\=
MULTIPLICATION_ASSIGNMENT_OP \*\=
EQUAL_OP \=\=
NOT_EQUAL_OP \!\=
LESS_THAN_OP \<
GREATER_THAN_OP \>
GREATER_OR_EQUAL_OP \>\=
LESS_OR_EQUAL_OP \<\=
INTEGER [+-]?[0-9]+
BOOLEAN true|false
STRING \"(\\.|[^\\"])*\"
LOGICAL_OR_OP or 
LOGICAL_AND_OP and
IF if
ELSE else
VAR_TYPE var
WHILE while
FOR for
RETURN return
FUNCTION function
MAIN main
READ_HEADING droneque\.read_heading
READ_ALTITUDE droneque\.read_altitude
READ_TEMPERATURE droneque\.read_temperature
VERTICALLY_CLIMB_UP droneque\.vertically_climb_up
VERTICALLY_DROP_DOWN droneque\.vertically_drop_down
VERTICALLY_STOP droneque\.vertically_stop
HORIZONTALLY_MOVE_FORWARD droneque\.horizontally_move_forward
HORIZONTALLY_MOVE_BACKWARD droneque\.horizontally_move_backward
HORIZONTALLY_MOVE_STOP droneque\.horizontally_stop
TURN_LEFT droneque\.turn_left
TURN_RIGHT droneque\.turn_right
SPRAY_ON droneque\.spray_on
SPRAY_OFF droneque\.spray_off
CONNECT_WITH_COMPUTER droneque\.connect_with_computer
CONNECT_WITH_MOBILE_DEVICE droneque\.connect_with_mobile_device
INPUT droneque\.input
OUTPUT dronque\.output
EXIT droneque\.exit
PRINT droneque\.print
%%
{WHITESPACE} {printf("WHITESPACE ");} 
{NEWLINE} {printf("NEWLINE ");}  
{LB} {printf("LB ");}
{RB} {printf("RB ");}
{LP} {printf("LP ");}
{RP} {printf("RP ");}
{COMMA} {printf("COMMA ");}
{END_STATEMENT} {printf("END_STATEMENT ");}
{SINGLE_COMMENT_LINE} {printf("SINGLE_COMMENT_LINE ");}
{MULTIPLE_COMMENT_LINE} {printf("MULTIPLE_COMMENT_LINE ");}
{COMMENT_SIGN} {printf("COMMENT_SIGN ");}
{EXPONENTIATION_OP} {printf("EXPONENTIATION_OP ");}
{ADDITION_ASSIGNMENT_OP} {printf("ADDITION_ASSIGNMENT_OP ");}
{SUBTRACTION_ASSIGNMNET_OP} {printf("SUBTRACTION_ASSIGNMNET_OP ");}
{DIVISION_ASSIGNMENT_OP} {printf("DIVISION_ASSIGNMENT_OP ");}
{MULTIPLICATION_ASSIGNMENT_OP} {printf("MULTIPLICATION_ASSIGNMENT_OP ");}
{EQUAL_OP} {printf("EQUAL_OP ");}
{NOT_EQUAL_OP} {printf("NOT_EQUAL_OP ");}
{LESS_THAN_OP} {printf("LESS_THAN_OP ");}
{GREATER_THAN_OP} {printf("GREATER_THAN_OP ");}
{GREATER_OR_EQUAL_OP} {printf("GREATER_OR_EQUAL_OP ");}
{LESS_OR_EQUAL_OP} {printf("LESS_OR_EQUAL_OP ");} 
{ASSIGN_OP} {printf("ASSIGN_OP ");}
{ADDITION_OP} {printf("ADDITION_OP ");}
{SUBTRACTION_OP} {printf("SUBTRACTION_OP ");}
{MULTIPLICATION_OP} {printf("MULTIPLICATION_OP ");}
{DIVISION_OP} {printf("DIVISION_OP ");}
{MODULO_OP} {printf("MODULO_OP ");}
{INCREMENT_OP} {printf("INCREMENT_OP ");}
{DECREMENT_OP} {printf("DECREMENT_OP ");}
{INTEGER} {printf("INTEGER ");}
{BOOLEAN} {printf("BOOLEAN ");}
{STRING} {printf("STRING ");}
{LOGICAL_OR_OP} {printf("LOGICAL_OR_OP ");} 
{LOGICAL_AND_OP} {printf("LOGICAL_AND_OP ");} 
{IF} {printf("IF ");}
{ELSE} {printf("ELSE ");}
{ELSE}{WHITESPACE}{IF} {printf("ELSE IF ");}
{VAR_TYPE} {printf("VAR_TYPE ");}
{WHILE} {printf("WHILE ");} 
{FOR} {printf("FOR ");} 
{RETURN} {printf("RETURN ");}
{FUNCTION} {printf("FUNCTION ");} 
{MAIN} {printf("MAIN ");} 
{READ_HEADING} printf("READ_HEADING ");
{READ_ALTITUDE} printf("READ_ALTITUDE ");
{READ_TEMPERATURE} printf("READ_TEMPERATURE ");
{VERTICALLY_CLIMB_UP} {printf("VERTICALLY_CLIMB_UP ");}
{VERTICALLY_DROP_DOWN} {printf("VERTICALLY_DROP_DOWN ");}
{VERTICALLY_STOP} {printf("VERTICALLY_STOP ");}
{HORIZONTALLY_MOVE_FORWARD} {printf("HORIZONTALLY_MOVE_FORWARD ");}  
{HORIZONTALLY_MOVE_BACKWARD} {printf("HORIZONTALLY_MOVE_BACKWARD ");} 
{HORIZONTALLY_MOVE_STOP} {printf("HORIZONTALLY_MOVE_STOP ");}  
{TURN_LEFT} {printf("TURN_LEFT ");}
{TURN_RIGHT} {printf("TURN_RIGHT ");} 
{SPRAY_ON} {printf("SPRAY_ON ");} 
{SPRAY_OFF} {printf("SPRAY_OFF ");} 
{CONNECT_WITH_COMPUTER} {printf("CONNECT_WITH_COMPUTER ");} 
{CONNECT_WITH_MOBILE_DEVICE} {printf("CONNECT_WITH_MOBILE_DEVICE ");} 
{INPUT} {printf("INPUT ");} 
{OUTPUT} {printf("OUTPUT ");}
{EXIT} {printf("EXIT ");}  
{PRINT} {printf("PRINT ");}  
{IDENTIFIER} {printf("IDENTIFIER ");}
%%