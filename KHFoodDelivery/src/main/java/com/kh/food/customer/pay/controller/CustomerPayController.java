package com.kh.food.customer.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
  public class CustomerPayController {

  @RequestMapping("/customer/pay.do")
  public String customerPay() 
  { 
  return "customer/pay" ;
  }
  
  
  
  
  @RequestMapping("/customer/payEnd.do") 
  public String customerPayEnd() 
  {
  return "customer/payEnd"; } 
  
  }
 