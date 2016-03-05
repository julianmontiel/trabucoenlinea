package controller;

/**
 * Created by julian on 3/5/16.
 */

import javax.faces.bean.*;

@ManagedBean(name="myTemplateController")
@SessionScoped
public class MyTemplateController {

    private String title = "";

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String index(){
        this.title = "Inicio";
        return "index";
    }

    public String aboutus(){
        this.title = "About Us";
        return "aboutus";
    }

    public String news(){
        this.title = "News";
        return "news";
    }

}
