package org.currency.app.springmvccurrency.controller;
//ConverterBean.java
import java.math.*;


public class ConverterBean{

private BigDecimal yenRate;
private BigDecimal euroRate;
private BigDecimal yenAmount;
private BigDecimal euroAmount; 

/** Creates new ConverterBean */
public ConverterBean() {
  yenRate = new BigDecimal ("138.78");
  euroRate = new BigDecimal (".0084");
  yenAmount = new BigDecimal("0.0");
  euroAmount = new BigDecimal("0.0");
}
public BigDecimal getYenAmount () {
  return yenAmount;
}
public void setYenAmount(BigDecimal amount) {
  yenAmount = amount.multiply(yenRate);
  yenAmount =  yenAmount.setScale(2,BigDecimal.ROUND_UP);
}
public BigDecimal getEuroAmount () {
  return euroAmount;
}
public void setEuroAmount (BigDecimal amount) {
  euroAmount = amount.multiply(euroRate);
  euroAmount = 
    euroAmount.setScale(2,BigDecimal.ROUND_UP);
}
}