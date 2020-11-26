package Model;
import java.lang.reflect.InvocationTargetException;
import org.apache.commons.beanutils.BeanUtilsBean;
public class ProfileMerger extends BeanUtilsBean{
    @Override
    public void copyProperty(Object dest, String name, Object value)
            throws IllegalAccessException, InvocationTargetException {
    try{
        if(value.getClass().getName("java.lang.String"))
        {
            if((String)value=="")return;
            super.copyProperty(dest, name, value);
        }
        else if(value.getClass().getName("java.lang.Float"))
        {
            if(-1==((Float)value))return;
            super.copyProperty(dest, name, value);
        }
        if((String)value=="")return;
        
    }
    catch (Exception e)
    {
        if(-1==((Float)value))return;
    }
        
    }
}