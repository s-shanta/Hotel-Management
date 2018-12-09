CLEAR SCREEN;


SET SERVEROUTPUT ON;
SET VERIFY OFF;


DECLARE
name varchar2(30);
pass varchar2(30);
email varchar2(30);
	
	
BEGIN
	name := '&username';
	pass := '&password';
        email:= '&email';
        
	 
      insert into signin(username, password,email ) values (name, pass,email );

	

END;
/
select * from signin;
