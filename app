const express=require('express')
const bodyParser=require('body-parser')
const app=express()
const adminRoutes=require('./routes/admin')
const shop1Routes=require('./routes/shop1')
app.use(bodyParser.urlencoded({extended:false}))
app.use(adminRoutes)
app.use(shop1Routes)
app.use((req,res,next)=>{
    res.status(404).send('<h1>page not fount</h1>')
});
app.listen(3000)
admin.js
const express=require('express')
const router=express.Router()
router.get('/add-product',(req,res,next)=>{
    res.send`(<form action='/add-product', method="POST">)<input type="text"name="title"><button type="submit">send</button></form>`
});
router.post('/add-product',(req,res,next)=>{
    console.log(req.body)
    res.redirect('/')
    
});
module.exports=router;


//app.js
const express=require('express')
const router=express.Router();
router.get('/',(req,res,next)=>{
    res.send('<h1>hello from express</h1>')
});
module.exports=router;
