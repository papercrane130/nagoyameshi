package com.example.nagoyameshi.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.nagoyameshi.entity.Restaurant;

public interface RestaurantRepository extends JpaRepository<Restaurant, Integer> {
	public Page<Restaurant> findByNameLike(String keyword, Pageable pageable);
	
    public Page<Restaurant> findByNameLikeOrAddressLike(String nameKeyword, String addressKeyword, Pageable pageable);    
    public Page<Restaurant> findByAddressLike(String area, Pageable pageable);
    public Page<Restaurant> findByLowestPriceLessThanEqual(Integer lowestPrice, Pageable pageable); 
       
    public Page<Restaurant> findByCategoryIdLike(String category, Pageable pageable);
    //public Page<Restaurant> findByPriceLessThanEqual(Integer price, Pageable pageable);
    
    //public List<Restaurant> findTop10ByOrderByCreatedAtDesc();
//    public static final String _querybase = " SELECT * "+
//    		" FROM restaurants "+
//    		" INNER JOIN category "+
//    		  " ON restaurants.category_id = category.id "+
//    		  " WHERE category.name = :category "+ 
//            " ORDER BY restaurants.id ASC ";
//    		
//    		@Query(value = _querybase, nativeQuery = true)
//    		public List<Restaurant> findCategoryLike(@Param("category") String category);
   
    		
    public List<Restaurant> findTop10ByOrderByCreatedAtDesc();
}
