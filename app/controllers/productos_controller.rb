class ProductosController < ApplicationController
  def index
  	@pharmaceuticalforms = Pharmaceuticalform.all
  	@pharmaceuticalgroups = Pharmaceuticalgroup.all
    @products_a = Product.order_name_a
    @products_b = Product.order_name_b
    @products_c = Product.order_name_c
    @products_d = Product.order_name_d
    @products_e = Product.order_name_e
    @products_f = Product.order_name_f
    @products_g = Product.order_name_g
    @products_h = Product.order_name_h
    @products_i = Product.order_name_i
    @products_j = Product.order_name_j
    @products_k = Product.order_name_k
    @products_l = Product.order_name_l
    @products_m = Product.order_name_m
    @products_n = Product.order_name_n
    @products_o = Product.order_name_o
    @products_p = Product.order_name_p
    @products_q = Product.order_name_q
    @products_r = Product.order_name_r
    @products_s = Product.order_name_s
    @products_t = Product.order_name_t
    @products_u = Product.order_name_u
    @products_v = Product.order_name_v
    @products_w = Product.order_name_w
    @products_x = Product.order_name_x
    @products_y = Product.order_name_y
    @products_z = Product.order_name_z
    @search = Search.new
  end
end
