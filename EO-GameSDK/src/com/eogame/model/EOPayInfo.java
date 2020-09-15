package com.eogame.model;

import java.io.Serializable;

/**
 * 支付信息
 * @author Malone
 */
public class EOPayInfo implements Serializable {

    @Override
	public String toString() {
		return "EOPayInfo [orderNO=" + orderNO + ", productId=" + productId
				+ ", productName=" + productName + ", productDesc="
				+ productDesc + ", cpOrderId=" + cpOrderId
				+ ", extInfo=" + extInfo + ", price=" + price + "]";
	}

	//订单号
    private String orderNO = "";
    
    private String productId = "";
    
    //商品名称
    private String productName = "";

    //商品描述
    private String productDesc = "";
    
    private String cpOrderId = "";
    
    private String extInfo   = "";

    /** 充值金额（必)，单位分 */
	private float price;

	/** 币种代码*/
	private String currencyCode = "";

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public String getOrderNO() {
        return orderNO;
    }

    public void setOrderNO(String orderNO) {
        this.orderNO = orderNO;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getCpOrderId() {
		return cpOrderId;
	}

	public void setCpOrderId(String cpOrderId) {
		this.cpOrderId = cpOrderId;
	}

	public String getExtInfo() {
		return extInfo;
	}

	public void setExtInfo(String extInfo) {
		this.extInfo = extInfo;
	}
	
}
