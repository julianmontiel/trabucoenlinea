package ejb;

import javax.faces.bean.*;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;

/**
 * Created by julian on 3/10/16.
 */
@ManagedBean(name="galleriaBean")
@SessionScoped
public class GalleriaBean {

    private List<String> images;

    @PostConstruct
    public void init() {
        images = new ArrayList<String>();
        for (int i = 1; i <= 2; i++) {
            images.add("jmc" + i + ".jpeg");
        }
    }

    public List<String> getImages() {
        return images;
    }

/*    <p:graphicImage value="#{resource['images:#{image}']}" title="image1" alt="image 1 desc"/>
    <p:graphicImage value="#{image.path}" title="#{image.title}" alt="#{image.description}"/>*/

}
