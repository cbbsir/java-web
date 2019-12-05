package utils;

import org.springframework.web.servlet.view.InternalResourceView;

import java.io.File;
import java.util.Locale;

public class HtmlResourceView extends InternalResourceView {
    @Override
    public boolean checkResource(Locale locale) throws Exception {
        File file=new File(this.getServletContext().getRealPath("/")+getUrl());
        return file.exists(); //判断页面是否存在
    }
}
