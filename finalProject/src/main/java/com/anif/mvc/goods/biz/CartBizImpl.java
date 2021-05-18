package com.anif.mvc.goods.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.goods.dao.CartDao;
import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;


@Service
public class CartBizImpl implements CartBiz{

	
	@Autowired
	private CartDao dao;
	@Override
	public void addCart(CartDto cart) {
		
		dao.addCart(cart);
		
		
				
	}
	@Override
	public List<CartListDto> cartList(int mNo) {
		return dao.cartList(mNo);
	}
	
	
	@Override
	public int deleteCart(CartDto cart) {

		return dao.deleteCart(cart);
	}
	
	
	

}
