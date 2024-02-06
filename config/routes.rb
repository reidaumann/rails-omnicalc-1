Rails.application.routes.draw do
  get("/", { :controller => "omni", :action => "sq" })
  get("/square/results", { :controller => "omni", :action => "sq_result" })
  get("/square/new", { :controller => "omni", :action => "sq" })

  get("/square_root/new", { :controller => "omni", :action => "sqrt" })
  get("/square_root/results", { :controller => "omni", :action => "sqrt_result" })

  get("/payment/new", { :controller => "omni", :action => "payment" })
  get("/payment/results", { :controller => "omni", :action => "pay_result" })

  get("/random/new", { :controller => "omni", :action => "random" })
  get("/random/results", { :controller => "omni", :action => "rand_result" })
end
