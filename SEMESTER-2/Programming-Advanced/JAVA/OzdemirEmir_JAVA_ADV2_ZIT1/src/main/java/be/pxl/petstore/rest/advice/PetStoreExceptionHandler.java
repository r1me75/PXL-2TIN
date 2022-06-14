package be.pxl.petstore.rest.advice;

import be.pxl.petstore.exception.BusinessException;
import be.pxl.petstore.exception.InventoryOutOfStockException;
import be.pxl.petstore.exception.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class PetStoreExceptionHandler {
    @ExceptionHandler(value = { NotFoundException.class } )
    @ResponseStatus( value = HttpStatus.NOT_FOUND )
    public ErrorMessage resourceNotFoundException(RuntimeException ex) {
        return new ErrorMessage(ex.getMessage());
    }

    @ExceptionHandler(value = {InventoryOutOfStockException.class, BusinessException.class } )
    @ResponseStatus( value = HttpStatus.BAD_REQUEST )
    public ErrorMessage resourceNotAcceptable(RuntimeException ex) {
        return new ErrorMessage(ex.getMessage());
    }
}

