User.create([
    { name: 'Jon', size: 'M', age: 31},
    { name: 'A', size: 'L', age: 22},
    { name: 'B', size: 'XL', age: 31},
    { name: 'C', size: 'S', age: 25},
    { name: 'D', size: 'XL', age: 44},
  ])
  
  Item.create([
    { style: 'shirt', size: 'S', color: 'blue', price: 10, user_id: 1},
    { style: 'shirt', size: 'M', color: 'red', price: 12, user_id: 1},
    { style: 'shirt', size: 'S', color: 'yellow', price: 10, user_id: 1},
    { style: 'shirt', size: 'S', color: 'blue', price: 10, user_id: 2},
    { style: 'shirt', size: 'L', color: 'red', price: 12, user_id: 2},
    { style: 'shirt', size: 'S', color: 'yellow', price: 10, user_id: 2},
    { style: 'shirt', size: 'XL', color: 'orange', price: 13, user_id: 2},
    { style: 'shirt', size: 'M', color: 'red', price: 12, user_id: 2},
    { style: 'shirt', size: 'S', color: 'pink', price: 10, user_id: 2},
    { style: 'hat', size: 'S', color: 'yellow', price: 10, user_id: 3}
  ])
  
   Color.create([
     {name: 'pink'},
     {name: 'yellow'},
     {name: 'blue'},
     {name: 'red'},
     {name: 'white'},
     {name: 'black'},
   ])
    
Logo.create([
         { name: 'https://i.imgur.com/2FPatyw.png?1', user_id: 1},
         { name: 'https://i.imgur.com/eWUVgIV.png?1', user_id: 2},
         { name: 'https://i.imgur.com/cq1KbYO.png?1', user_id: 2},
         { name: 'https://i.imgur.com/wdU3TLw.png?1', user_id: 3},
])