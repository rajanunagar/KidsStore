package com.kidsstore.Kidsstore.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kidsstore.Kidsstore.DAO.AddressDAO;
import com.kidsstore.Kidsstore.DAO.AdminDAO;
import com.kidsstore.Kidsstore.DAO.BillingAddressDAO;
import com.kidsstore.Kidsstore.DAO.CartDAO;
import com.kidsstore.Kidsstore.DAO.CartListDAO;
import com.kidsstore.Kidsstore.DAO.OrderDAO;
import com.kidsstore.Kidsstore.DAO.ProductDAO;
import com.kidsstore.Kidsstore.DAO.RecentsDAO;
import com.kidsstore.Kidsstore.DAO.ShippingAddressDAO;
import com.kidsstore.Kidsstore.DAO.SignUpDAO;
import com.kidsstore.Kidsstore.entities.*;

@Controller
public class HomeController {
	@Autowired
	private ProductDAO productdao;
	@Autowired
	private CartListDAO cartListRepo;
	@Autowired
	private CartDAO cartrepo;
	@Autowired
	private RecentsDAO recentsdao;
	@Autowired
	private BillingAddressDAO billingAddressDAO;
	@Autowired
	private ShippingAddressDAO shippingAddressDAO;
	@Autowired
	private SignUpDAO signUpDAO;
	@Autowired
	private OrderDAO orderDAO;
	@Autowired
	private AddressDAO addressDao;
    @RequestMapping("")
	public String showPage(ModelMap model,HttpSession session) {

    	List<Product> p=productdao.findAll();
        model.addAttribute("product", p);
        List<Recents> r=recentsdao.findAll();
        model.addAttribute("recents", r);
        String cid=(String) session.getAttribute("username");
        if(cid==null) {
        	session.setAttribute("total", 0);
        	return "index";
        }
        List<Cart> c=cartrepo.findByCid(cid);
//        if(c==null) {
//        	session.setAttribute("total", 0);
//        	return "index";
//        }
        int sum=0;
        List<CartList> cl=null;
        if(c.size()>0) {
        cl=c.get(0).getProduct();
        if(cl.size()>0) {
        for(int i=0;i<cl.size();i++) {
        	int q=cl.get(i).getQuantity();
        	int price=cl.get(i).getProduct().getPrice();
        	sum+=q*price;
        }
        }
    }
        session.setAttribute("total",sum);
        if(cl==null) {
            session.setAttribute("totalproducts",0);

        }
        else{
        	
        	session.setAttribute("totalproducts",cl.size());
        }

	   return "index";
   }
    @RequestMapping("/checkout")
    public String showCheckoutPage(ModelMap model,HttpSession session) { 
    	String uname=(String) session.getAttribute("username");
    	if(uname==null) {
    		return "login";
    	}
    	List<User> user=signUpDAO.findByUsername(uname);
    	List<Address> add=addressDao.findByUser(user.get(0));
    	if(add!=null) {
    	model.addAttribute("address", add.get(0));
    	}
    	else{
        	model.addAttribute("address", add);

    	}
        List<Recents> r=recentsdao.findAll();
	        model.addAttribute("recents", r);
 	   return "checkout";
    }
    @RequestMapping("/addcart")
	   public String addCartPage(@RequestParam("id")String pid,HttpSession session) {
//    	List<Cart> cart=cartrepo.findByCid(cid);
    	   String cid=(String) session.getAttribute("username");
    	   if(cid==null ) {
    		   return "login";
    	   }
    	   else if(pid==null) {
    		   return "redirect:./";
    	   }
    	   List<Product> product = productdao.findByPid(pid);
		   System.out.println(product);

           int quantity=product.get(0).getQuantity();
           
//    	   List<CartList> p=cartListRepo.findByProductAndUser_Username(product.get(0),cid);
		   List<Cart> carts=cartrepo.findByCid(cid);
		   List<CartList> p;
		   if(carts==null || carts.isEmpty()) {
			   System.out.println("carts==null");
		    p=null;
		   }
		   else {
			   System.out.println("carts!=null");

			   p=carts.get(0).getProduct();
		   }
		   boolean flag=true;
//    	   System.err.println(p);
    	   if(!(p==null)) {
    		   System.out.println("p!=null");
    	   for(int i=0;i<p.size();i++) {
    		   if(p.get(i).getProduct().equals(product.get(0))) {
    			   flag=false;
    		   }
    	   }
    	   }
		   int q=1;
    	   if(quantity==0) {
    		   System.out.println("Hello product not aavailable");
    		   session.setAttribute("available","no");
    	   }
    	   else {
    	   if(flag || p==null || p.isEmpty()) {
    		   System.out.println("Hello guys!!");
    		   p = new ArrayList<CartList>();
    		   p.add(new CartList(product.get(0), 1));
    		   if(carts==null || carts.isEmpty()) {
        		   carts=new ArrayList<Cart>();
        		   carts.add(new Cart(0, cid, p));
        	   }else {
        		   carts.get(0).addProduct(p.get(0));
        	   }
    		   product.get(0).setQuantity(quantity-q);
    		   productdao.save(product.get(0));
    		   cartListRepo.save(p.get(0));
        	   cartrepo.save(carts.get(0));
    	   }
    	   else {
    		   System.err.println(p.get(0));
    		   p.get(0).setQuantity(p.get(0).getQuantity()+1);
    		   product.get(0).setQuantity(quantity-q);
    		   productdao.save(product.get(0));
    		   cartListRepo.save(p.get(0));
    	   }
    	   session.setAttribute("added", "yes");
    	   }
    	   String next=(String) session.getAttribute("nextpage");
    	   System.out.println(next);
    	   String type=(String) session.getAttribute("type");
    	   if(next!=null) {
        	   System.out.println(next);
               session.removeAttribute("nextpage");
    		   return "redirect:Shop";
    	   }
			/*
			 * if(next==null) { System.out.println("Hello"); return "redirect:./"; }
			 */
    	   return "redirect:./";
	   }
    
    @RequestMapping("/cart")
       public String showCart(ModelMap model,HttpSession session) {
    	String cid=(String) session.getAttribute("username");
 	   if(cid==null ) {
 		   return "login";
 	   }    	  List<Cart> cart=cartrepo.findByCid(cid);
    	  if(cart==null || cart.isEmpty() ) {
    		  return "cart";
    	  }
          List<Recents> r=recentsdao.findAll();
	        model.addAttribute("recents", r);
//	        String type=p.get(0).getType();
			   List<Product> rel=productdao.findAll();
			   if(cart.isEmpty()) {
			    	  model.addAttribute("cart", cart);
			   }
			   else {
				   
				   model.addAttribute("cart", cart.get(0));
			   }
	        model.addAttribute("rel", rel);

    	  return "cart";
       }
    @RequestMapping("/removecart")
    	public String updateCart(ModelMap model,HttpSession session,@RequestParam("pid")String pid) {
    	String cid=(String) session.getAttribute("username");
  	    List<Cart> cart=cartrepo.findByCid(cid);
 	    List<Product> p = productdao.findByPid(pid);
 	    List<CartList> cartList = cartListRepo.findByProduct(p.get(0));
 	    int index = cart.get(0).getIdOfProductList(p.get(0));
 	    System.err.println(index+ " "+cart.get(0).getProductByIndex(index).getId());
 	    if(index==-1) {
 	    	model.addAttribute("cart", cart.get(0));
 	    	return "cart";
 	    }
 	    int id = cart.get(0).getProductByIndex(index).getId();
 	    int q=cart.get(0).getProduct().get(index).getQuantity();
 	    int oldq=p.get(0).getQuantity();
 	   p.get(0).setQuantity(oldq+q);
 	    productdao.save(p.get(0));
 	    cart.get(0).getProduct().remove(index);
 	    cartrepo.save(cart.get(0));
// 	    cartListRepo.deleteById(id);
 	    
//  	cart.get(0).getProduct().remove(cartListRepo.findByProduct(p.get(0)).get(0));
//  	    	System.err.println(cart.get(0));
//  	   cartListRepo.findByProduct(p.get(0)).get(0).
//  	     List<CartList> cartlist=cartListRepo.findByProduct(cartListRepo.findByProduct(p.get(0)).get(0));
//  	     
//  	     cartListRepo.deleteById(cart.get(0).getProduct().get);
   	  model.addAttribute("cart", cart.get(0));
      List<Recents> r=recentsdao.findAll();
        model.addAttribute("recents", r);
		   List<Product> rel=productdao.findAll();
	        model.addAttribute("rel", rel);
    	 return "cart";
        }
    @RequestMapping("updatecart")
    public String updateCart(ModelMap model,@RequestParam("pid")String pid,HttpSession session,@RequestParam("q")int quantity) {
    	String cid=(String) session.getAttribute("username");
  	    List<Cart> cart=cartrepo.findByCid(cid);
 	    List<Product> p = productdao.findByPid(pid);
 	    int oldq=p.get(0).getQuantity();
 	    if(oldq<=0) {
 	    	return "cart";
 	    }
 	    int index = cart.get(0).getIdOfProductList(p.get(0));
  	    int oldquantity=cart.get(0).getProduct().get(index).getQuantity();
        cart.get(0).getProduct().get(index).setQuantity(quantity);
        p.get(0).setQuantity(oldq-(quantity-oldquantity));
        productdao.save(p.get(0));
        cartListRepo.save(cart.get(0).getProduct().get(index));
        cartrepo.save(cart.get(0));
    	model.addAttribute("cart", cart.get(0));
        List<Recents> r=recentsdao.findAll();
		   List<Product> rel=productdao.findAll();
	        model.addAttribute("rel", rel);

	        model.addAttribute("recents", r);
    	return "cart";
    }
    @RequestMapping("logout")
    public String logout(HttpSession session) {
    	session.removeAttribute("username");
    	return "redirect:./";
    }
    @GetMapping("viewOrder")
    public String viewGet() {
    	return "viewOrder";
    }
    @PostMapping("viewOrder")
    public String viewOrder(ModelMap model,HttpSession session,@RequestParam("cid")String username,@RequestParam("defaddress")String def,BillingAddress badd,ShippingAddress sadd) {
    	System.out.println(username);
    	String cid=(String) session.getAttribute("username");
    	if(cid==null) {
    		return "login";
    	}
    	List<User> user=signUpDAO.findByUsername(username);
    	System.out.println(user.get(0));
    	java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
        System.out.print(date);
    	badd.setUser(user.get(0));
        System.out.print(def);
        if(def.equals("yes")) {
        	List<Address> add=addressDao.findByUser(user.get(0));
        	Address address=new Address();
        	if(add.size()>0) {
               int id=add.get(0).getId();
               address.setId(id);
        	}
        		address.setAddress2(sadd.getSaddress2());
        		address.setCity(sadd.getScity());
        		address.setCountry(sadd.getScountry());
        		address.setState(sadd.getSstate());
        		address.setStreet(sadd.getSstreet());
        		address.setPincode(sadd.getSpostcode());
        		address.setUser(user.get(0));
        		addressDao.save(address);
        	
        }
        billingAddressDAO.save(badd);
        shippingAddressDAO.save(sadd);
        List<Cart> cart=cartrepo.findByCid(username);
        List<Order> order=orderDAO.findByUser(user.get(0));
        List<Order> or=new ArrayList<Order>();
        for(int i=0;i<cart.get(0).getProduct().size();i++) {
        Order o=new Order();
        o.setAddress(badd);
        o.setProduct(cart.get(0).getProduct().get(i).getProduct());
        o.setQuantity(cart.get(0).getProduct().get(i).getQuantity());
        o.setUser(user.get(0));
        o.setStatus("pending");
        o.setSaddress(sadd);
        o.setDate(date);
        or.add(o);
        order.add(o);
        }
        orderDAO.saveAll(order);
        int id=cart.get(0).getId();
        
    	System.out.println(badd+"\n"+sadd);
    	model.addAttribute("order", or);
    	session.setAttribute("lastorder", or.size());
    	List<CartList> cl=cart.get(0).getProduct();
    	cart.get(0).getProduct().removeAll(cl);
    	cartrepo.save(cart.get(0));
    	return "redirect:lastOrder";
    }
    @RequestMapping("/lastOrder")
    public String showLastOrder(ModelMap model,HttpSession session) {
    	String cid=(String) session.getAttribute("username");
    	List<User> user=signUpDAO.findByUsername(cid);
        List<Order> order=orderDAO.findByUser(user.get(0));
        int n=(int) session.getAttribute("lastorder");
        session.removeAttribute("lastorder");
        List<Order> lasto=order.subList(order.size()-n, order.size());
        model.addAttribute("order", lasto);

    	return "viewOrder";
    }
//    @RequestMapping("/admin/orders")
//    public String adminOrders() {
//    	
//    }
    @RequestMapping("orders")
    public String showOrders(ModelMap model,HttpSession session) {
    	String cid=(String) session.getAttribute("username");
    	if(cid==null) {
    		return "login";
    	}
    	List<User> user=signUpDAO.findByUsername(cid);
        List<Order> order=orderDAO.findByUser(user.get(0));
        if(order.size()<10) {
            model.addAttribute("orders", order);

        }
        else {
        List<Order> subor=order.subList(0,10);
        model.addAttribute("orders", subor);

        }
    	return "allOrders";
    }
    @RequestMapping("orderspage")
    public String showOrdersWithPage(@RequestParam("page")int page,ModelMap model,HttpSession session) {
    	String cid=(String) session.getAttribute("username");
    	if(cid==null) {
    		return "login";
    	}
    	List<User> user=signUpDAO.findByUsername(cid);
        List<Order> order=orderDAO.findByUser(user.get(0));
        List<Order> subor=order.subList(page*10,page*10+10);
        model.addAttribute("orders", subor);
    	return "allOrders";
    }
    @RequestMapping("viewProfile")
    public String viewProfile(ModelMap model,HttpSession session) {
    	String cid=(String)session.getAttribute("username");
    	List<User> user=signUpDAO.findByUsername(cid);
    	if(cid==null) {
    		return "login";
    	}
    	model.addAttribute("user", user.get(0));
    	List<Address> add=addressDao.findByUser(user.get(0));
    	if(add==null || add.isEmpty() || add.size()==0) {
    		Address addr=new Address();
    		addr.setStreet(user.get(0).getAddress());
    		model.addAttribute("address", addr);
    	}
    	else {
    		System.out.println("else");
    	model.addAttribute("address", add.get(0));
    	}
    	return "viewProfile";
    }
    @PostMapping("editProfile")
    public String editProfile(@RequestParam("name")String name,@RequestParam("DOB")String DOB,@RequestParam("email")String email,@RequestParam("phoneno")String phoneno,@RequestParam("city")String city,@RequestParam("country")String country,@RequestParam("pincode")String pincode,@RequestParam("street")String street,HttpSession session) {
    	System.out.println("Hello");
    	String cid=(String)session.getAttribute("username");
    	List<User> users=signUpDAO.findByUsername(cid);
    	List<Address> add=addressDao.findByUser(users.get(0));
    	if(add==null || add.isEmpty()) {
    		Address address=new Address();
    		address.setStreet(street);
    		address.setCity(city);
    		address.setCountry(country);
    		address.setPincode(pincode);
    		address.setUser(users.get(0));
    		add.add(address);
    	}
    	else {
    		add.get(0).setStreet(street);
    		add.get(0).setCity(city);
    		add.get(0).setCountry(country);
    		add.get(0).setPincode(pincode);
    	}
        SimpleDateFormat formatter2=new SimpleDateFormat("yyyy-MM-dd");  
        Date dob = null;
		try {
			dob = formatter2.parse(DOB);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

        users.get(0).setDOB(dob);
        users.get(0).setEmail(email);
        users.get(0).setName(name);
        users.get(0).setPhoneno(phoneno);
        signUpDAO.save(users.get(0));
    	addressDao.save(add.get(0));
//    	user.get(0).setEmail(u.getEmail());
//    	user.get(0).setDOB(u.getDOB());
//    	user.get(0).setName(u.getName());
//    	user.get(0).setPhoneno(u.getPhoneno());
//        add.get(0).setCity(a.getCity());
//        add.get(0).setPincode(a.getPincode());
//        add.get(0).setCountry(a.getCountry());
//        add.get(0).setStreet(a.getStreet());
//        addressDao.save(add.get(0));
//        signUpDAO.save(user.get(0));
    	return "redirect:viewProfile";
    }
}

@Controller
class ShopConroller {
	@Autowired
	private ProductDAO productdao;
	@RequestMapping("/Shop")
	   public String displayPage(ModelMap model,HttpSession session) {
		   String type=(String) session.getAttribute("type");
		   if(type.equals("all")) {
			   System.out.println(type);
			   List<Product> p=productdao.findAll();
//			   System.err.println(p.get(0));

		        model.addAttribute("cat", p);
		   }
		   else {
			   List<Product> cat=productdao.findByType(type);

		        model.addAttribute("cat", cat);
				   return "shop";

		   }
		   return"shop";
	   }
	   @RequestMapping("/shop")
	   public String showPage(ModelMap model,@RequestParam("type")String type,HttpSession session) {
		   session.setAttribute("type", type);
		   if(type.equals("all")) {
			   System.out.println(type);
			   List<Product> p=productdao.findAll();
//			   System.err.println(p.get(0));

		        model.addAttribute("cat", p);
		   }
		   else {
			   List<Product> cat=productdao.findByType(type);

		        model.addAttribute("cat", cat);
				   return "shop";

		   }

		  
		   return "shop";

	   }
}
@Controller
class SingleConroller {
	@Autowired
	private ProductDAO productdao;
	@Autowired
	private RecentsDAO recentsdao;
	   @RequestMapping("/single-product")
	   public String showPage(ModelMap model,@RequestParam("id")String id) {
		   List<Product> p=productdao.findByPid(id);
	        model.addAttribute("product", p.get(0));
	        String type=p.get(0).getType();
			   List<Product> rel=productdao.findByType(type);
	            List<Recents> recent=recentsdao.findByProduct(p.get(0));

            if(recent.size()==0) {
            Recents rec=new Recents();
            rec.setProduct(p.get(0));
            recentsdao.save(rec);
            }
            List<Recents> r=recentsdao.findAll();
	        model.addAttribute("recents", r);

	        model.addAttribute("rel", rel);
		   return "single-product";
	   }
}

@Controller
class AddProductController {
  @RequestMapping("/admin/addProduct")
   public String showPage(HttpSession session) {
	   String username=(String) session.getAttribute("username");
	   if(username==null) {
		   return "login";
	   }
	   return "addProduct";
   }
}
@Controller
class SignUpController {
  @RequestMapping("/signup")
   public String showPage() {
	   return "signUp";
   }
}


@Controller
 class AdminController {
	@Autowired
	private ProductDAO productdao;
	@Autowired
	private AdminDAO admindao;
	@Autowired
	private CartDAO cartrepo;
	@RequestMapping("/admin")
	public String showPage(ModelMap model,HttpSession session) {
		List<Product> cat=productdao.findAll();
        model.addAttribute("cat", cat);

		   return "admin-index";
	   }
	@RequestMapping("/admin/manageProduct")
	public String managePage(ModelMap model, @RequestParam("id")String pid) {
		List<Product> p=productdao.findByPid(pid);
		
        model.addAttribute("product", p.get(0));

		return "manageProduct";
		
	}
	@RequestMapping("/admin/editProduct")
	public String editProduct(Product p) {
		System.out.println(p);
		String pid=p.getPid();
		   List<Product> products=productdao.findByPid(pid);
        p.setPhoto(products.get(0).getPhoto());
		productdao.save(p);
		return "redirect:../admin";
	}
	@RequestMapping("/admin/viewproduct")
	public String viewPage(ModelMap model,@RequestParam("id")String pid) {
		   List<Product> p=productdao.findByPid(pid);
	        model.addAttribute("product", p.get(0));
		return "viewProduct";
	}
}