Rails.application.routes.draw do
  get("/", { :controller => "omni", :action => "sq" })
  get("/square/results", { :controller => "omni", :action => "sq_result" })
  get("/square/new", { :controller => "omni", :action => "sq" })

  get("/squarert", { :controller => "omni", :action => "sqrt" })
  get("/squarert/results", { :controller => "omni", :action => "sq_result" })

  get("/payment", { :controller => "omni", :action => "payment" })
  get("/payment/results", { :controller => "omni", :action => "pay_result" })

  get("/", { :controller => "omni", :action => "random" })
  get("/random/results", { :controller => "omni", :action => "rand_result" })
end
