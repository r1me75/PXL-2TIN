package be.pxl.paj.olympicgames.api.advice;

import be.pxl.paj.olympicgames.api.ErrorMessage;
import be.pxl.paj.olympicgames.exception.BusinessException;
import be.pxl.paj.olympicgames.exception.NotFoundException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@RestControllerAdvice
public class OlympicGamesExceptionHandler {

    @ExceptionHandler(value = { NotFoundException.class } )
    @ResponseStatus( value = HttpStatus.NOT_FOUND )
    public ErrorMessage resourceNotFoundException(RuntimeException ex) {
        return new ErrorMessage(ex.getMessage());
    }

    @ExceptionHandler(value = { BusinessException.class } )
    @ResponseStatus( value = HttpStatus.BAD_REQUEST )
    public ErrorMessage resourceNotAcceptable(RuntimeException ex) {
        return new ErrorMessage(ex.getMessage());
    }
}

//@ControllerAdvice
//public class OlympicGamesExceptionHandler extends ResponseEntityExceptionHandler {
//
//    @ExceptionHandler( value = { NotFoundException.class })
//    protected ResponseEntity<Object> handleNotFound(RuntimeException ex, WebRequest request) {
//        return handleExceptionInternal(ex, ex.getMessage(), new HttpHeaders(), HttpStatus.NOT_FOUND, request);
//    }
//}


