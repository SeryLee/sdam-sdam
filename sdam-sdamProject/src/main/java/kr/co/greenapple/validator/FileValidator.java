package kr.co.greenapple.validator;

import kr.co.greenapple.beans.DogBean;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return DogBean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object target, Errors errors) {
        DogBean dogBean = (DogBean) target;

        String beanName = errors.getObjectName();
        if(beanName.equals("dogBean")) {
            MultipartFile multipartFile = dogBean.getUpload_file();
            if(multipartFile.getSize() == 0) {
                errors.rejectValue("upload_file", "missing.file");
            }
        }
    }
}
