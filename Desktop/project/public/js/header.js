let headerElem = document.querySelector('.header')

if (headerElem) {
    headerElem.innerHTML = /*html*/ `

                <div class="header-container">
                    <a href="index.html" class="home-btn">
                        <h3><i class="bi-house-heart"></i></h1>
                            <span><strong>首頁</strong></span>
                    </a>
                </div>
                <div class="header-container">
                    <a href="index.html" class="user-btn">
                        <h3><i class="bi bi-person-hearts"></i></h1>
                            <span><strong>會員專區</strong></span>
                    </a>
                </div>
                <div class="header-container">
                    <a href="index.html" class="booking-btn">
                        <h3><i class="bi bi-bookmark-heart"></i></h1>
                            <span><strong>占卜預約</strong></span>
                    </a>
                </div>
                <div class="header-container">
                    <a href="index.html" class="buy-btn">
                        <h3><i class="bi bi-bag-heart"></i></h1>
                            <span><strong>購物專區</strong></span>
                    </a>
                </div>`
}