package web;

/**
 * Created by julian on 3/5/16.
 */

import javax.faces.bean.*;

@ManagedBean(name="myTemplateController")
@SessionScoped
public class MyTemplateController {


    private String CAT_INICIO="Inicio";
    private String CAT_CARDENAS="Cárdenas";
    private String CAT_REGION="Región";
    private String CAT_NACIONAL="Nacional";
    private String CAT_INTERNACIONAL="Internacional";
    private String CAT_CULTURA="Cultura";
    private String CAT_ROJA="Roja";
    private String CAT_ELECCIONES="Elecciones";
    private String CAT_CONTACTOS="Contactos";
    private String CAT_ARTICULO="Nuevo Articulo";

    public String getCAT_INICIO() {
        return CAT_INICIO;
    }
    public String getCAT_CARDENAS() {return CAT_CARDENAS;}
    public String getCAT_REGION() {
        return CAT_REGION;
    }
    public String getCAT_NACIONAL() {
        return CAT_NACIONAL;
    }
    public String getCAT_INTERNACIONAL() {
        return CAT_INTERNACIONAL;
    }
    public String getCAT_CULTURA() {
        return CAT_CULTURA;
    }
    public String getCAT_ROJA() {
        return CAT_ROJA;
    }
    public String getCAT_ELECCIONES() {
        return CAT_ELECCIONES;
    }
    public String getCAT_CONTACTOS() {
        return CAT_CONTACTOS;
    }
    public String getCAT_ARTICULO() {return CAT_ARTICULO; }


    public void setCAT_INICIO(String CAT_INICIO) {
        this.CAT_INICIO = CAT_INICIO;
    }
    public void setCAT_CARDENAS(String CAT_CARDENAS) {
        this.CAT_CARDENAS = CAT_CARDENAS;
    }
    public void setCAT_REGION(String CAT_REGION) {
        this.CAT_REGION = CAT_REGION;
    }
    public void setCAT_NACIONAL(String CAT_NACIONAL) {
        this.CAT_NACIONAL = CAT_NACIONAL;
    }
    public void setCAT_INTERNACIONAL(String CAT_INTERNACIONAL) {
        this.CAT_INTERNACIONAL = CAT_INTERNACIONAL;
    }
    public void setCAT_CULTURA(String CAT_CULTURA) {
        this.CAT_CULTURA = CAT_CULTURA;
    }
    public void setCAT_ROJA(String CAT_ROJA) {
        this.CAT_ROJA = CAT_ROJA;
    }
    public void setCAT_ELECCIONES(String CAT_ELECCIONES) {
        this.CAT_ELECCIONES = CAT_ELECCIONES;
    }
    public void setCAT_CONTACTOS(String CAT_CONTACTOS) {
        this.CAT_CONTACTOS = CAT_CONTACTOS;
    }
    public void setCAT_ARTICULO(String CAT_ARTICULO) {
        this.CAT_ARTICULO = CAT_ARTICULO;
    }


    private String title = "";

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String index(){
        this.title = CAT_INICIO;
        return "index";
    }

    public String contactos(){
        this.title = CAT_CONTACTOS;
        return "contactos";
    }

    public String cardenas(){
        this.title = CAT_CARDENAS;
        return "cardenas";
    }

    public String articulo(){
        this.title = CAT_ARTICULO;
        return "articulo";
    }

}
