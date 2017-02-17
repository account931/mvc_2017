<?php

class RandomClass{
// used  in Randomize

// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **  
static function getRandonStr(){
$items = Array("Life is like a road that has no u-turns, you can only move forward but can never go back, so enjoy every moment of your life because it will never come back to you again.","Life is a book and every day that we live is a new page, so paint every page of your life with amazing colors of good deeds and amazing adventures.","Life is like an ice cream that is melting all the time, so enjoy every moment of it until is completely melts.","Your life is beautiful if the people around you are happy because of you.","Life is not easy but if you persevere and show a never die attitude; you can make life a lot easier for yourself.","The biggest suspense of life is that we know who we want but we do not know who wants us.","You miss 100% of the opportunities in life, which you do not go for.","The answer to everything in life is no until you ask for it.","Your goal in life should not be to beat others but should be to beat your own self, your own achievements.","Good luck to you as you move onto the next stage in your life. Without a doubt, you will continue to have success in all areas!","Moving on to a new stage in life can be a challenging process. We wish you the best of luck in all of your future endeavors, you will be great!","You have proven yourself to be a very skilled individual who has the capacity to do great things with their life. Continue to make us proud as you face new challenges and adventures!","Best wishes to you as you progress from one stage in life to another. While this can be a difficult time, the results that you will achieve are worth all of the hard work that you will put in!","We wish you good luck as you move on to new and different challenges. Though these challenges may be intimidating at first, we are confident that you have the skills to solve any problem!","As the old saying goes, nothing in life is guaranteed.  However, we are confident that you have the skills and experiences necessary to thrive in this new stage of your life.","Luck is not found but made by those who are determined and you are one such person.","Sending you thoughtful wishes in all life’s endeavors. Good luck to you now and always.","Life is what you make of it and I am happy to know that yours is filled with such good luck.","The sweetest things in life are love and happiness. Wishing you good luck now that you have found that.");
if(isset($_POST['SubmitRandom'])){
echo "<img src='image/haveday.png' alt='day'/></br>";
//echo $items[array_rand($items)];// may pick the  same  item  twice;
$resultRandom=$items[rand(0, count($items) - 1)];  //not   picking the same item again
echo $resultRandom;
}
}
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************

}
?>