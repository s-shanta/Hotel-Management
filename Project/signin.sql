CLEAR SCREEN;


SET SERVEROUTPUT ON;
SET VERIFY OFF;


DECLARE
	name varchar2(30);
	pass varchar2(30);
	
	ok number;
	
BEGIN
	name := '&username';
	pass := '&password';
	dbms_output.put_line(name);
	dbms_output.put_line(pass);
	
	ok := fsign(name, pass);
	
	if( ok = 1 )
		then dbms_output.put_line('succesully signed in');
	else dbms_output.put_line('errors');
	
	end if;
	
END;
/