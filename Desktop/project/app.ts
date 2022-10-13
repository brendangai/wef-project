import express from 'express'
import expressSession from 'express-session'
import fs from 'fs'
// import { uploadDir } from './upload'
// import { logger } from './logger'
// import { userRoutes } from './routes/userRoute'
// import { memosRoutes } from './routes/MemoRoute'
// import { Client } from "pg";
// import dotenv from 'dotenv';
// import xlsx from 'xlsx';

//行咗呢句, 先識得用`.env`果個file
// dotenv.config();
// 你攞咗呢個file, 只需要補返一個.env就可以用到
if (!fs.existsSync('memos.json')) {
    fs.writeFileSync('memos.json', '[]')
}
const app = express()
app.use(express.json())
app.use(express.urlencoded())

app.use(
    expressSession({
        secret: 'hi',
        resave: true,
        saveUninitialized: true
    })
)

// declare module 'express-session' {
//     interface SessionData {
//         name?: string
//         isloggedin?: boolean
//     }
// }

// app.use('/user', userRoutes)
// app.use('/memos', memosRoutes)


// // Auto create a folder
// fs.mkdirSync(uploadDir, { recursive: true })

app.use(express.static('public')) // auto to do next()
app.use('/uploads', express.static('uploads')) // auto to do next()
// app.use(isLogin, express.static('private'))

// app.listen(8080, () => {
//     logger.info('Listening on port 8080')
// })

app.listen(8080, () => {
    console.log('Listening on port: http://localhost:8080')
})