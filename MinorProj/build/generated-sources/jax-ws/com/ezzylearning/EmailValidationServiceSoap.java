
package com.ezzylearning;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.8
 * Generated source version: 2.2
 * 
 */
@WebService(name = "EmailValidationServiceSoap", targetNamespace = "http://www.ezzylearning.com/services/EmailValidationService.asmx")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface EmailValidationServiceSoap {


    /**
     * 
     * @param email
     * @return
     *     returns boolean
     */
    @WebMethod(operationName = "ValidateEmail", action = "http://www.ezzylearning.com/services/EmailValidationService.asmx/ValidateEmail")
    @WebResult(name = "ValidateEmailResult", targetNamespace = "http://www.ezzylearning.com/services/EmailValidationService.asmx")
    @RequestWrapper(localName = "ValidateEmail", targetNamespace = "http://www.ezzylearning.com/services/EmailValidationService.asmx", className = "com.ezzylearning.ValidateEmail")
    @ResponseWrapper(localName = "ValidateEmailResponse", targetNamespace = "http://www.ezzylearning.com/services/EmailValidationService.asmx", className = "com.ezzylearning.ValidateEmailResponse")
    public boolean validateEmail(
        @WebParam(name = "email", targetNamespace = "http://www.ezzylearning.com/services/EmailValidationService.asmx")
        String email);

}
