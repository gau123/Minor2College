
package com.ezzylearning;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ezzylearning package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Boolean_QNAME = new QName("http://www.ezzylearning.com/services/EmailValidationService.asmx", "boolean");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ezzylearning
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ValidateEmail }
     * 
     */
    public ValidateEmail createValidateEmail() {
        return new ValidateEmail();
    }

    /**
     * Create an instance of {@link ValidateEmailResponse }
     * 
     */
    public ValidateEmailResponse createValidateEmailResponse() {
        return new ValidateEmailResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Boolean }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://www.ezzylearning.com/services/EmailValidationService.asmx", name = "boolean")
    public JAXBElement<Boolean> createBoolean(Boolean value) {
        return new JAXBElement<Boolean>(_Boolean_QNAME, Boolean.class, null, value);
    }

}
