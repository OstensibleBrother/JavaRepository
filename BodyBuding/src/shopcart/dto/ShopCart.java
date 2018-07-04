package shopcart.dto;
import java.io.*;
import java.util.*;
public class ShopCart implements Serializable{
	public ShopCart()
    {
    }
    private List cart = null;
    /**
     * 添加一个产品到购物车
     * @param product Product
     */
    public void addProductToCart(Product product)
    {
        if (cart == null)
            cart = new ArrayList();
        Iterator it = cart.iterator();
        while (it.hasNext())
        {
            Product item = (Product) it.next();
            if (item.getId().equals(product.getId()))
            {
                return;
            }
        }
        cart.add(product);
    }
    /**
     * 从购物车中删除一产品
     * @param productId String 产品id
     */
    public void removeProductFromCart(String productId)
    {
        if (cart == null)
            return;
        Iterator it = cart.iterator();
        while (it.hasNext())
        {
            Product item = (Product) it.next();
            if (item.getId().equals(productId))
            {
                it.remove();
                return;
            }
        }
    }
    /**
     * 计算购物车中的商品价格
     * @return double 商品价格总数
     */
    public double getAllProductPrice()
    {
        if (cart == null)
            return 0;
        double totalPrice = 0;
        Iterator it = cart.iterator();
        while (it.hasNext())
        {
            Product item = (Product) it.next();
            totalPrice += item.getPrice();
        }
        return totalPrice;
    }
    /**
     * 返回购物车所有产品信息
     * @return List
     */
    public List getAllProductsFromCart()
    {
        return cart;
    }
}
