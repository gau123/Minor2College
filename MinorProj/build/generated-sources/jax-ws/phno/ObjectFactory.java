
package phno;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the phno package. 
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

    private final static QName _Validatepno_QNAME = new QName("http://phno/", "validatepno");
    private final static QName _ValidatepnoResponse_QNAME = new QName("http://phno/", "validatepnoResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: phno
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ValidatepnoResponse }
     * 
     */
    public ValidatepnoResponse createValidatepnoResponse() {
        return new ValidatepnoResponse();
    }

    /**
     * Create an instance of {@link Validatepno }
     * 
     */
    public Validatepno createValidatepno() {
        return new Validatepno();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Validatepno }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://phno/", name = "validatepno")
    public JAXBElement<Validatepno> createValidatepno(Validatepno value) {
        return new JAXBElement<Validatepno>(_Validatepno_QNAME, Validatepno.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ValidatepnoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://phno/", name = "validatepnoResponse")
    public JAXBElement<ValidatepnoResponse> createValidatepnoResponse(ValidatepnoResponse value) {
        return new JAXBElement<ValidatepnoResponse>(_ValidatepnoResponse_QNAME, ValidatepnoResponse.class, null, value);
    }

}
