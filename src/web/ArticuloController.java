package web;

import web.MyTemplateController;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by julian on 3/12/16.
 */
@ManagedBean(name="articuloController")
@SessionScoped
public class ArticuloController {

    private String category;
    private Map<String,String> categories;

    private String estado;
    private Map<String, String> estados;

    @ManagedProperty(value="#{myTemplateController}")
    private MyTemplateController cat;

    private Date fecha_creacion;
    private Date inicio_publicacion;
    private Date fin_publicacion;
    private String text;


    public MyTemplateController getCat() {return cat;}
    public void setCat(MyTemplateController cat) {this.cat = cat;}

    public String getCategory() {return category;}
    public void setCategory(String category) {this.category = category;}
    public String getEstado() {return estado;}
    public void setEstado(String estado) {this.estado = estado;}
    public Map<String,String> getCategories() {return categories;}
    public Map<String,String> getEstados() {return estados;}
    public Date getInicio_publicacion() {return inicio_publicacion;}
    public void setInicio_publicacion(Date inicio_publicacion) {this.inicio_publicacion = inicio_publicacion;}
    public Date getFecha_creacion() {return fecha_creacion;}
    public void setFecha_creacion(Date fecha_creacion) {this.fecha_creacion = fecha_creacion;}
    public Date getFin_publicacion() {return fin_publicacion;}
    public void setFin_publicacion(Date fin_publicacion) {this.fin_publicacion = fin_publicacion;}
    public String getText() {return text;}
    public void setText(String text) {this.text = text;}

    @PostConstruct
    public void init() {
        //categorias
        categories = new HashMap<String, String>();
        categories.put(cat.getCAT_CARDENAS(), cat.getCAT_CARDENAS());
        categories.put(cat.getCAT_REGION(), cat.getCAT_REGION());
        categories.put(cat.getCAT_NACIONAL(), cat.getCAT_NACIONAL());
        categories.put(cat.getCAT_INTERNACIONAL(), cat.getCAT_INTERNACIONAL());
        categories.put(cat.getCAT_CULTURA(), cat.getCAT_CULTURA());
        categories.put(cat.getCAT_ROJA(), cat.getCAT_ROJA());
        categories.put(cat.getCAT_ELECCIONES(), cat.getCAT_ELECCIONES());

        //estados
        estados = new HashMap<String, String>();
        estados.put("Publicado", "Publicado");
        estados.put("Despublicado", "Despublicado");
        estados.put("Archivado", "Archivado");
        estados.put("Movido a la Papelera", "Papelera");



    }
}
