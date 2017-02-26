# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = 'admin@gmail.com' # 可以改成自己的 email

u.password = '111111'                # 最少要六码

u.password_confirmation = '111111'   # 最少要六码

u.is_admin = true
u.save

puts '1 admin account created'

products = [

#巧克力
{ title: '100%纯可可脂巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
{ title: '96%醇黑巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
{ title: '92%醇黑巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
{ title: '88%醇黑巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
{ title: '85%醇黑巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
{ title: '82%醇黑巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
{ title: '80%醇黑巧克力', description: '采用非州产地可可豆原料生产，纯正欧洲风味及口感幼滑，属于苦甜类口味。沿用传统方法，精心制作，还原经典
，绝无取巧。值得您悉心品味！', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},

#坚果
{ title: '板栗', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '扁桃', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '核桃', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '开心果', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '松子', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '夏威夷果', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '腰果', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
{ title: '榛子', description: '无添加，口味纯正。富含健康油脂，和各类维生素及矿物质。经常食用有益大脑，居家旅行必备小食。', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },


#浆果
{ title: '黑加仑', description: '精选优质大果，细致圆熟，味道酸甜，可食率高，如宝石般气质动人，颗颗饱满，细腻脆嫩，更加新鲜诱人。', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },
{ title: '蓝莓', description: '精选优质大果，细致圆熟，味道酸甜，可食率高，如宝石般气质动人，颗颗饱满，细腻脆嫩，更加新鲜诱人。', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },
{ title: '蔓越莓', description: '精选优质大果，细致圆熟，味道酸甜，可食率高，如宝石般气质动人，颗颗饱满，细腻脆嫩，更加新鲜诱人。', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },
{ title: '沙棘', description: '精选优质大果，细致圆熟，味道酸甜，可食率高，如宝石般气质动人，颗颗饱满，细腻脆嫩，更加新鲜诱人。', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },
{ title: '圣女果', description: '精选优质大果，细致圆熟，味道酸甜，可食率高，如宝石般气质动人，颗颗饱满，细腻脆嫩，更加新鲜诱人。', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },
{ title: '树莓', description: '精选优质大果，细致圆熟，味道酸甜，可食率高，如宝石般气质动人，颗颗饱满，细腻脆嫩，更加新鲜诱人。', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },



#生鲜
{ title: '鳄梨', description: '“来自森林的奶油”，你值得拥有。', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '三文鱼', description: '鲜！滑！嫩！爽！', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '西蓝花', description: '低热量，富含纤维素及各类维生素矿物质。', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '鸡蛋', description: '关于鸡蛋，很多谣言。吃了都说好！', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '牛肉', description: '鲜！滑！嫩！爽！', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '鲜虾', description: '鲜！滑！嫩！爽！', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '紫甘蓝', description: '低热量，富含纤维素及各类维生素矿物质。', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
{ title: '西芹', description: '低热量，富含纤维素及各类维生素矿物质。', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },



create_products = for i in 1..31 do
  Product.create!([title: products[i - 1][:title], description: products[i - 1][:description], price: rand(5..100), quantity: 100, category: products[i-1][:category], is_hidden: products[i-1][:is_hidden], is_recommend: products[i-1][:is_recommend], carbolevel: products[i-1][:carbolevel]])
end
puts '7 products created.'

images = {
  image_path1: "#{Rails.root}/app/assets/images/chocolate/1.png",
  image_path2: "#{Rails.root}/app/assets/images/chocolate/2.png",
  image_path3: "#{Rails.root}/app/assets/images/chocolate/3.png",
  image_path4: "#{Rails.root}/app/assets/images/chocolate/4.png",
  image_path5: "#{Rails.root}/app/assets/images/chocolate/5.png",
  image_path6: "#{Rails.root}/app/assets/images/chocolate/c.png",

  image_path7: "#{Rails.root}/app/assets/images/chocolate/2.png",
  image_path8: "#{Rails.root}/app/assets/images/chocolate/3.png",
  image_path9: "#{Rails.root}/app/assets/images/chocolate/4.png",
  image_path10: "#{Rails.root}/app/assets/images/chocolate/5.png",
  image_path11: "#{Rails.root}/app/assets/images/chocolate/6.png",
  image_path12: "#{Rails.root}/app/assets/images/chocolate/a.png",

  image_path13: "#{Rails.root}/app/assets/images/chocolate/3.png",
  image_path14: "#{Rails.root}/app/assets/images/chocolate/4.png",
  image_path15: "#{Rails.root}/app/assets/images/chocolate/5.png",
  image_path16: "#{Rails.root}/app/assets/images/chocolate/6.png",
  image_path17: "#{Rails.root}/app/assets/images/chocolate/7.png",
  image_path18: "#{Rails.root}/app/assets/images/chocolate/b.png",

  image_path19: "#{Rails.root}/app/assets/images/chocolate/4.png",
  image_path20: "#{Rails.root}/app/assets/images/chocolate/5.png",
  image_path21: "#{Rails.root}/app/assets/images/chocolate/6.png",
  image_path22: "#{Rails.root}/app/assets/images/chocolate/7.png",
  image_path23: "#{Rails.root}/app/assets/images/chocolate/1.png",
  image_path24: "#{Rails.root}/app/assets/images/chocolate/d.png",

  image_path25: "#{Rails.root}/app/assets/images/chocolate/5.png",
  image_path26: "#{Rails.root}/app/assets/images/chocolate/6.png",
  image_path27: "#{Rails.root}/app/assets/images/chocolate/7.png",
  image_path28: "#{Rails.root}/app/assets/images/chocolate/3.png",
  image_path29: "#{Rails.root}/app/assets/images/chocolate/a.png",
  image_path30: "#{Rails.root}/app/assets/images/chocolate/b.png",

  image_path31: "#{Rails.root}/app/assets/images/chocolate/6.png",
  image_path32: "#{Rails.root}/app/assets/images/chocolate/7.png",
  image_path33: "#{Rails.root}/app/assets/images/chocolate/1.png",
  image_path34: "#{Rails.root}/app/assets/images/chocolate/2.png",
  image_path35: "#{Rails.root}/app/assets/images/chocolate/3.png",
  image_path36: "#{Rails.root}/app/assets/images/chocolate/c.png",

  image_path37: "#{Rails.root}/app/assets/images/chocolate/7.png",
  image_path38: "#{Rails.root}/app/assets/images/chocolate/1.png",
  image_path39: "#{Rails.root}/app/assets/images/chocolate/2.png",
  image_path40: "#{Rails.root}/app/assets/images/chocolate/3.png",
  image_path41: "#{Rails.root}/app/assets/images/chocolate/b.png",
  image_path42: "#{Rails.root}/app/assets/images/chocolate/c.png",

  #--------------------------------------------------------------------以上--------巧克力--------------------------------------------------------
  image_path43: "#{Rails.root}/app/assets/images/jianguo/banli/1.png",
  image_path44: "#{Rails.root}/app/assets/images/jianguo/banli/2.png",
  image_path45: "#{Rails.root}/app/assets/images/jianguo/banli/3.png",
  image_path46: "#{Rails.root}/app/assets/images/jianguo/banli/4.png",
  image_path47: "#{Rails.root}/app/assets/images/jianguo/banli/5.png",
  image_path48: "#{Rails.root}/app/assets/images/jianguo/banli/6.png",
  image_path49: "#{Rails.root}/app/assets/images/jianguo/banli/7.png",

  #---------------------------------------------------     ------------以上--------坚果------板栗-------
  image_path50: "#{Rails.root}/app/assets/images/jianguo/biantao/1.png",
  image_path51: "#{Rails.root}/app/assets/images/jianguo/biantao/2.png",
  image_path52: "#{Rails.root}/app/assets/images/jianguo/biantao/3.png",
  image_path53: "#{Rails.root}/app/assets/images/jianguo/biantao/4.png",
  image_path54: "#{Rails.root}/app/assets/images/jianguo/biantao/5.png",
  image_path55: "#{Rails.root}/app/assets/images/jianguo/biantao/6.png",

  #--------------------------------------------------------------------以上--------坚果------扁桃-------
  image_path56: "#{Rails.root}/app/assets/images/jianguo/hetao/1.png",
  image_path57: "#{Rails.root}/app/assets/images/jianguo/hetao/2.jpg",
  image_path58: "#{Rails.root}/app/assets/images/jianguo/hetao/3.jpg",
  image_path59: "#{Rails.root}/app/assets/images/jianguo/hetao/4.jpg",
  image_path60: "#{Rails.root}/app/assets/images/jianguo/hetao/5.jpg",
  image_path61: "#{Rails.root}/app/assets/images/jianguo/hetao/6.jpg",
  image_path62: "#{Rails.root}/app/assets/images/jianguo/hetao/7.jpg",

    #--------------------------------------------------------------------以上--------坚果------核桃-------
  image_path63: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/1.png",
  image_path64: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/2.jpg",
  image_path65: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/3.jpg",
  image_path66: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/4.png",
  image_path67: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/5.png",
  image_path68: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/6.png",
  image_path69: "#{Rails.root}/app/assets/images/jianguo/kaixinguo/7.png",

    #--------------------------------------------------------------------以上--------坚果------开心果-------
  image_path70: "#{Rails.root}/app/assets/images/jianguo/songzi/1.png",
  image_path71: "#{Rails.root}/app/assets/images/jianguo/songzi/2.png",
  image_path72: "#{Rails.root}/app/assets/images/jianguo/songzi/3.png",
  image_path73: "#{Rails.root}/app/assets/images/jianguo/songzi/4.png",
  image_path74: "#{Rails.root}/app/assets/images/jianguo/songzi/5.png",
  image_path75: "#{Rails.root}/app/assets/images/jianguo/songzi/6.png",

    #--------------------------------------------------------------------以上--------坚果------松子-------
  image_path76: "#{Rails.root}/app/assets/images/jianguo/xiaweiyiguo/1.png",
  image_path77: "#{Rails.root}/app/assets/images/jianguo/xiaweiyiguo/2.png",
  image_path78: "#{Rails.root}/app/assets/images/jianguo/xiaweiyiguo/3.png",
  image_path79: "#{Rails.root}/app/assets/images/jianguo/xiaweiyiguo/4.png",
  image_path80: "#{Rails.root}/app/assets/images/jianguo/xiaweiyiguo/5.png",
    #--------------------------------------------------------------------以上--------坚果------夏威夷果----
  image_path81: "#{Rails.root}/app/assets/images/jianguo/yaoguo/1.png",
  image_path82: "#{Rails.root}/app/assets/images/jianguo/yaoguo/2.png",
  image_path83: "#{Rails.root}/app/assets/images/jianguo/yaoguo/3.png",
  image_path84: "#{Rails.root}/app/assets/images/jianguo/yaoguo/4.png",
  image_path85: "#{Rails.root}/app/assets/images/jianguo/yaoguo/5.png",
  image_path86: "#{Rails.root}/app/assets/images/jianguo/yaoguo/6.png",

    #--------------------------------------------------------------------以上--------坚果------腰果-------
  image_path87: "#{Rails.root}/app/assets/images/jianguo/zhenzi/1.png",
  image_path88: "#{Rails.root}/app/assets/images/jianguo/zhenzi/2.png",
  image_path89: "#{Rails.root}/app/assets/images/jianguo/zhenzi/3.png",
  image_path90: "#{Rails.root}/app/assets/images/jianguo/zhenzi/4.png",
  image_path91: "#{Rails.root}/app/assets/images/jianguo/zhenzi/5.png",
  image_path92: "#{Rails.root}/app/assets/images/jianguo/zhenzi/6.png",
    #--------------------------------------------------------------------以上--------坚果------榛子----------------------------------------------------------------

  image_path93: "#{Rails.root}/app/assets/images/jiangguo/heijialun/1.png",
  image_path94: "#{Rails.root}/app/assets/images/jiangguo/heijialun/2.png",
  image_path95: "#{Rails.root}/app/assets/images/jiangguo/heijialun/3.png",
  image_path96: "#{Rails.root}/app/assets/images/jiangguo/heijialun/4.png",
  image_path97: "#{Rails.root}/app/assets/images/jiangguo/heijialun/5.png",

#--------------------------------------------------------------------以上--------浆果------黑加仑-------
  image_path98: "#{Rails.root}/app/assets/images/jiangguo/lanmei/1.png",
  image_path99: "#{Rails.root}/app/assets/images/jiangguo/lanmei/2.png",
  image_path100: "#{Rails.root}/app/assets/images/jiangguo/lanmei/3.png",
  image_path101: "#{Rails.root}/app/assets/images/jiangguo/lanmei/4.png",
  image_path102: "#{Rails.root}/app/assets/images/jiangguo/lanmei/5.png",
  image_path103: "#{Rails.root}/app/assets/images/jiangguo/lanmei/6.png",

  #--------------------------------------------------------------------以上--------浆果------蓝莓-------
  image_path104: "#{Rails.root}/app/assets/images/jiangguo/manyuemei/1.png",
  image_path105: "#{Rails.root}/app/assets/images/jiangguo/manyuemei/2.png",
  image_path106: "#{Rails.root}/app/assets/images/jiangguo/manyuemei/3.png",
  image_path107: "#{Rails.root}/app/assets/images/jiangguo/manyuemei/4.png",
  image_path108: "#{Rails.root}/app/assets/images/jiangguo/manyuemei/5.png",

  #--------------------------------------------------------------------以上--------浆果------蔓越莓-------
  image_path109: "#{Rails.root}/app/assets/images/jiangguo/shaji/1.png",
  image_path110: "#{Rails.root}/app/assets/images/jiangguo/shaji/2.png",
  image_path111: "#{Rails.root}/app/assets/images/jiangguo/shaji/3.png",
  image_path112: "#{Rails.root}/app/assets/images/jiangguo/shaji/4.png",
  image_path113: "#{Rails.root}/app/assets/images/jiangguo/shaji/5.png",
  image_path114: "#{Rails.root}/app/assets/images/jiangguo/shaji/6.png",

  #--------------------------------------------------------------------以上--------浆果------沙棘-------
  image_path115: "#{Rails.root}/app/assets/images/jiangguo/shengnvguo/1.png",
  image_path116: "#{Rails.root}/app/assets/images/jiangguo/shengnvguo/2.png",
  image_path117: "#{Rails.root}/app/assets/images/jiangguo/shengnvguo/3.png",
  image_path118: "#{Rails.root}/app/assets/images/jiangguo/shengnvguo/4.png",
  image_path119: "#{Rails.root}/app/assets/images/jiangguo/shengnvguo/5.png",
  image_path120: "#{Rails.root}/app/assets/images/jiangguo/shengnvguo/6.png",
  #--------------------------------------------------------------------以上--------浆果------圣女果-------
  image_path121: "#{Rails.root}/app/assets/images/jiangguo/shumei/1.png",
  image_path122: "#{Rails.root}/app/assets/images/jiangguo/shumei/2.png",
  image_path123: "#{Rails.root}/app/assets/images/jiangguo/shumei/3.png",
  image_path124: "#{Rails.root}/app/assets/images/jiangguo/shumei/4.png",
  image_path125: "#{Rails.root}/app/assets/images/jiangguo/shumei/5.png",
  #--------------------------------------------------------------------以上--------浆果------树莓------------------------------------------------------------------------
  image_path126: "#{Rails.root}/app/assets/images/shengxian/eli/1.png",
  image_path127: "#{Rails.root}/app/assets/images/shengxian/eli/2.png",
  image_path128: "#{Rails.root}/app/assets/images/shengxian/eli/3.png",
  image_path129: "#{Rails.root}/app/assets/images/shengxian/eli/4.png",
  image_path130: "#{Rails.root}/app/assets/images/shengxian/eli/5.png",
  image_path131: "#{Rails.root}/app/assets/images/shengxian/eli/6.png",

#--------------------------------------------------------------------以上--------生鲜-------鳄梨------
  image_path132: "#{Rails.root}/app/assets/images/shengxian/sanwenyu/1.jpg",
  image_path133: "#{Rails.root}/app/assets/images/shengxian/sanwenyu/2.jpg",
  image_path134: "#{Rails.root}/app/assets/images/shengxian/sanwenyu/3.jpg",
  image_path135: "#{Rails.root}/app/assets/images/shengxian/sanwenyu/4.jpg",
  image_path136: "#{Rails.root}/app/assets/images/shengxian/sanwenyu/5.jpg",
  image_path137: "#{Rails.root}/app/assets/images/shengxian/sanwenyu/6.jpg",

  #--------------------------------------------------------------------以上--------生鲜-------三文鱼------
  image_path138: "#{Rails.root}/app/assets/images/shengxian/xilanhua/1.png",
  image_path139: "#{Rails.root}/app/assets/images/shengxian/xilanhua/2.png",
  image_path140: "#{Rails.root}/app/assets/images/shengxian/xilanhua/3.png",
  image_path141: "#{Rails.root}/app/assets/images/shengxian/xilanhua/4.png",
  image_path142: "#{Rails.root}/app/assets/images/shengxian/xilanhua/5.png",
  image_path143: "#{Rails.root}/app/assets/images/shengxian/xilanhua/6.png",

  #--------------------------------------------------------------------以上--------生鲜-------西蓝花------
  image_path144: "#{Rails.root}/app/assets/images/shengxian/jidan/1.png",
  image_path145: "#{Rails.root}/app/assets/images/shengxian/jidan/2.png",
  image_path146: "#{Rails.root}/app/assets/images/shengxian/jidan/3.png",
  image_path147: "#{Rails.root}/app/assets/images/shengxian/jidan/4.png",
  image_path148: "#{Rails.root}/app/assets/images/shengxian/jidan/5.png",
  image_path149: "#{Rails.root}/app/assets/images/shengxian/jidan/6.png",

    #--------------------------------------------------------------------以上--------生鲜------鸡蛋------
  image_path150: "#{Rails.root}/app/assets/images/shengxian/niurou/1.png",
  image_path151: "#{Rails.root}/app/assets/images/shengxian/niurou/2.png",
  image_path152: "#{Rails.root}/app/assets/images/shengxian/niurou/3.png",
  image_path153: "#{Rails.root}/app/assets/images/shengxian/niurou/4.png",
  image_path154: "#{Rails.root}/app/assets/images/shengxian/niurou/5.png",
  image_path155: "#{Rails.root}/app/assets/images/shengxian/niurou/6.png",
    #--------------------------------------------------------------------以上--------生鲜-------牛肉------
  image_path156: "#{Rails.root}/app/assets/images/shengxian/xianxia/1.png",
  image_path157: "#{Rails.root}/app/assets/images/shengxian/xianxia/2.png",
  image_path158: "#{Rails.root}/app/assets/images/shengxian/xianxia/3.png",
  image_path159: "#{Rails.root}/app/assets/images/shengxian/xianxia/4.png",
  image_path160: "#{Rails.root}/app/assets/images/shengxian/xianxia/5.png",
    #--------------------------------------------------------------------以上--------生鲜-------鲜虾------
  image_path161: "#{Rails.root}/app/assets/images/shengxian/ziganlan/1.png",
  image_path162: "#{Rails.root}/app/assets/images/shengxian/ziganlan/2.png",
  image_path163: "#{Rails.root}/app/assets/images/shengxian/ziganlan/3.png",
  image_path164: "#{Rails.root}/app/assets/images/shengxian/ziganlan/4.png",
  image_path165: "#{Rails.root}/app/assets/images/shengxian/ziganlan/5.png",
  image_path166: "#{Rails.root}/app/assets/images/shengxian/ziganlan/6.png",
    #--------------------------------------------------------------------以上--------生鲜-------紫甘蓝------
  image_path167: "#{Rails.root}/app/assets/images/shengxian/xiqin/1.png",
  image_path168: "#{Rails.root}/app/assets/images/shengxian/xiqin/2.png",
  image_path169: "#{Rails.root}/app/assets/images/shengxian/xiqin/3.png",
  image_path170: "#{Rails.root}/app/assets/images/shengxian/xiqin/4.png",
  image_path171: "#{Rails.root}/app/assets/images/shengxian/xiqin/5.png",
  image_path172: "#{Rails.root}/app/assets/images/shengxian/xiqin/6.png",

    #--------------------------------------------------------------------以上--------生鲜-------西芹-------------------------------------------------------------------

}

# Product.create( title: '西葫芦', description: '碳水化合物含量：7克（中等大 小）', price: rand(10..100), category: "chocolate", image: open("#{Rails.root}/app/assets/images/images.jpeg"), photos: {avatar: open("#{Rails.root}/app/assets/images/images.jpeg")})
photos = [
  {product_id: 1, avatar: open(images[:image_path1])},
  {product_id: 1, avatar: open(images[:image_path2])},
  {product_id: 1, avatar: open(images[:image_path3])}
]

create_photos = for i in 1..3 do
  Photo.create!([product_id: photos[i-1][:product_id], avatar: photos[i-1][:avatar]])
end

puts 'photos add for product_id1'
