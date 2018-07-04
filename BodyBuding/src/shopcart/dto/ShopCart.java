package shopcart.dto;
import java.io.*;
import java.util.*;
public class ShopCart implements Serializable{
	public ShopCart()
    {
    }
    private List cart = null;
    /**
     * ���һ����Ʒ�����ﳵ
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
     * �ӹ��ﳵ��ɾ��һ��Ʒ
     * @param productId String ��Ʒid
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
     * ���㹺�ﳵ�е���Ʒ�۸�
     * @return double ��Ʒ�۸�����
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
     * ���ع��ﳵ���в�Ʒ��Ϣ
     * @return List
     */
    public List getAllProductsFromCart()
    {
        return cart;
    }
}
