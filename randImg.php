<?php 
// initial values:
$slug='my-gallery-demo'; // EDIT post/page slug that contains the gallery shortcode 
$type='page'; // EDIT post type (post,page,...) 
$size='thumb'; // EDIT image size (thumb,large,full,...)
$n=4; // EDIT number of random images to show

// fetch all ids from the gallery shortcode:
$ids=get_gallery_ids_wpse_87978($slug,$type);

// get n random keys from the $ids array:
$random_ids=array_rand($ids,$n);

// display a list of n random images:
echo '<ul>';
foreach($random_ids as $random_id){
      echo '<li>';
      echo wp_get_attachment_image( $ids[$random_id], $size );
      echo '</li>';
 }
echo '</ul>';
?>
