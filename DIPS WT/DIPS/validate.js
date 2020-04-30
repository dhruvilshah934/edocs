function validatePassword()
{
    pass=document.getElementById("pass");
    message=document.getElementById("message");
    rePass=document.getElementById("repass");
    
    if(pass.value.length < 8 )
    {
        message.style.color="red";
        message.innerHTML = "Length of password should be greater than or equal to 8";
        //alert("Password and Confirm Password Should Match.");
        pass.focus();
        return false;
    }
    else if(pass.value!=repass.value)
    {
        message.style.color="red";
        message.innerHTML = "Password and Confirm Password Should Match.";
        //alert("Password and Confirm Password Should Match.");
        rePass.focus();
        return false;
    }
    return true;
}