CREATE TABLE users (
    id SERIAL primary key,
    user_telephone TEXT not null,
    email_address TEXT,
    password text,
    create_at TIMESTAMP DEFAULT NOW(),
    update_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE orders (
    id SERIAL primary key,
    booking_date DATE,
    video_link TEXT,
    user_id INTEGER,
    order_status text not null,
    payment_status text not null,
    create_at TIMESTAMP DEFAULT NOW(),
    update_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE consult_questions (
    id SERIAL primary key,
    order_id INTEGER,
    name_of_member TEXT not null,
    zodiac_sign_of_member TEXT not null,
    -- name_of_person1 TEXT,
    -- zodiac_sign_of_person1 TEXT,
    -- relationship_with_person1 TEXT,
    -- name_of_person2 TEXT,
    -- zodiac_sign_of_person2 TEXT,
    -- relationship_with_person2 TEXT,
    -- name_of_person3 TEXT,
    -- zodiac_sign_of_person3 TEXT,
    -- relationship_with_person3 TEXT,
    -- name_of_person4 TEXT,
    -- zodiac_sign_of_person4 TEXT,
    -- relationship_with_person4 TEXT,
    consult_questions TEXT not null,
    create_at TIMESTAMP DEFAULT NOW(),
    update_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);
-- CREATE TABLE bookingcategory (
--     id SERIAL primary key,
--     name VARCHAR(255) not null,
--     create_at TIMESTAMP DEFAULT NOW(),
--     update_at TIMESTAMP DEFAULT NOW()
-- );
CREATE TABLE bookingdayava (
    id SERIAL primary key,
    booking_category VARCHAR(255),
    maximum_qty VARCHAR(255),
    start_date DATE not null,
    end_date DATE,
    time_period VARCHAR(255),
    status VARCHAR(255) not null,
    create_at TIMESTAMP DEFAULT NOW(),
    update_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE tarotgame (
    id SERIAL primary key,
    tarot_img VARCHAR(255) not null,
    reading VARCHAR(255) not null,
    create_at TIMESTAMP DEFAULT NOW(),
    update_at TIMESTAMP DEFAULT NOW()
);
-- Catergory "Tarot"
-- INSERT INTO bookingcategory (name) VALUES ('塔羅占卜'), ('心理咨詢'), ('身心靈課堂'),('其他顧問服務');
-- INSERT INTO bookingdayava (bookingcategory_id, maximum_qty, ava_date) 
-- VALUES ('1','1', '2022-06-13');
INSERT INTO tarotgame (tarot_img, reading)
VALUES ('tarot_images/cover.jpeg', ''),
    (
        'tarot_images/0.jpg',
        '愚者: 處於這個位置的傻瓜表明，此時您最想要的就是快樂，而您正在尋找可以帶來快樂的一件事。
您希望有一個新的起點，但不確定自己想要什麼或想要去哪裡。
在愛情方面，您可能對某人有不同的感覺。您的一部分想全心全意地進入戀愛關係，另一部分則在猶豫。
因此，如果您處在一種可以賦予您力量的關係中，那麼就留下來吧；否則，就該繼續前進了。'
    ),
    (
        'tarot_images/1.jpg',
        '魔術師: 這是一個充滿行動力及極大的潛力的時候。你十分自信，感覺充滿活力，而且思考敏捷。 魔術師是成功的預兆！是時候展現給大家你的成果！'
    ),
    (
        'tarot_images/2.jpg',
        '女祭司: 你感到不安和艱苦，你的直覺不斷告訴你「要小心，事情並不如外表那樣」。 請推遲任何決定或行動，直到你已經回答你的問題。 如果你是男性，這張卡可以表示在你的生活中出現了一個對你有不好影響的女人。'
    ),
    (
        'tarot_images/3.jpg',
        '皇后: 這是一個真正的創意和肥沃的時間。 如果你正在考慮一個孩子，這是一個很好的時候。 事業方面，現在也合適去找新的工作或商業機會或啟動一個創造性的項目。 皇后象徵豐富，快樂，幸福，和保證，為將來的發展打下堅實的基礎。'
    ),
    (
        'tarot_images/4.jpg',
        '皇帝: 你充滿自信，甚至能夠影響的其他人或事件，以達到你想要的東西。 更重要的是，你的父親，丈夫/伴侶或在你的生活中別具意義的一名男子已準備好幫助你。 請充分利用你的資源。'
    ),
    (
        'tarot_images/5.jpg',
        '教皇:你想要的幫助正在等待你，嘗試開口吧！ 如果你擔心不知道如何做出正確的決定，有一個擁有正確道德觀的人在你身邊，他可以提供幫助。 你可以從你的教師，牧師或父母，或是你尊敬的人那裡獲得建議。他們十分願意幫助你的。 '
    ),
    (
        'tarot_images/6.jpg',
        '戀人: 你想要的愛情或是一段新的關係正在等待你的到來。即使你不是想要愛情，你也將收到一個驚喜。 如果面臨一個選擇，那將是一個重要的選擇，而且可能影響你的一生。'
    ),
    (
        'tarot_images/7.jpg',
        '戰車: 堅持，堅持，堅持，這是對你最有利的事情。你肯定不是一個輕言放棄的人。 戰車的出現表示你將勝出你的鬥爭，所以不要放棄。繼續堅持，你就會成功。 你正處在變化的週期。你可能會到外地出差。如果你想購買一架新的車，現在正是得到它的時機。'
    ),
    (
        'tarot_images/8.jpg"',
        '力量: 你覺得無論面臨著過去，現在，還是將來的挑戰，你都會找到力量和勇氣獲得成功。 無論您是健康狀況不佳，還是面對一個破碎的婚姻或關係，或是應對工作中的挑戰，你都會找到你的意志力和力量去克服困難。 如果你正在嘗試放棄任何不良的生活習慣，例如吸煙或飲酒等，這是一個很好的時間去實行。'
    ),
    (
        'tarot_images/9.jpg',
        '隱士: 現在你可能正處於獨處或孤獨的時期。趁這個時候安靜內省和休息吧！ 別擔心，你會找到你想要的答案的，但隱士牌警告不要倉促作出決定。 如果你一直感覺不適，請用些時間休息和恢復。'
    ),
    (
        'tarot_images/10.jpg',
        '命運之輪: 你正遇上不幸，或許已經很明顯或有一定跡象開始呈現出來，事情正不按你希望的方向發展。 你負擔起重要決策的責任。相信你的直覺，即使你不得不作出痛苦的決定去放棄一些東西，以便繼續前進，勇敢去做吧。 命運之輪也許會將你帶向下方，但它終會再次向上轉向，並為你帶來新的好運氣。'
    ),
    (
        'src="tarot_images/11.jpg"',
        '正義: 你可能正在面對合約或法律問題，而當然你肯定不想利益受損 。而且你強烈覺得你是對的。 請保持冷靜，頭腦清醒，有需要的話，請尋求律師的協助。'
    ),
    (
        'src="tarot_images/12.jpg"',
        '吊人: 你覺得有點迷茫，也許是可怕，因為你感覺到你需要放棄才能夠繼續前進。這種放棄並不總是很清楚，你甚至可能不知道你應該放棄什麼。 倒吊人卡牌表示你的人生正轉換到另一階段，這張卡牌也可表示你的精神方面正在發展。也許你需要嘗試從不同的角度看待事物。'
    ),
    (
        'src="tarot_images/13.jpg"',
        '死神: 也許你覺得你生活中的一切正分崩離析。
你正經歷意想不到的變化和動盪，可能是工作的結束，事業上的完結，離婚或分手。 
不要嘗試過於擔心，這次結局預示著一個全新的開始，那會是一個大的轉變。'
    ),
    (
        'src="tarot_images/14.jpg"',
        '節制: 如果你是單身並尋找愛情，那麼首先通過糾正你過去犯下的錯誤來獲得內心的平靜，然後去尋找情感依戀。 對於夫婦來說，這張卡片肯定了在關係中需要同情和妥協的重要性，以使其變得快樂和安全。'
    ),
    (
        'src="tarot_images/15.jpg"',
        '惡魔: 你現在的情況像是毒品上癮一樣，你覺得感覺好極了，而且總是想要更多。 這種上癮是純粹而且簡單的，它可能是一種強迫性的性關係，容易得到的金錢交易，或是沉迷物質等。 小心，這些追求不會帶來一個理想的結局。'
    ),
    (
        'src="tarot_images/16.jpg"',
        '高塔: 你正害怕你的世界會分崩離析，你可會遭遇突然的變化和迷茫，而你不知道該怎麼辦。 也許潛意識裡，你一直想解決的問題，但並沒有想到事情會發展成這樣。抓住這個機會，使這種變化成為一個新開始的機會。'
    ),
    (
        'src="tarot_images/17.jpg"',
        '星星: 這是一段充滿緊張和失望的時期，你感到悲觀和恐懼，你覺得你希望即將破滅。 你遭遇的厄運，很大可能源於你的自我懷疑和消極。 你要有信心，你的運氣將會改變。'
    ),
    (
        'src="tarot_images/18.jpg"',
        '月亮: 雖然你感到困惑，恐懼，而且十分憂慮，請相信事情終會好轉。 事情看似困難或混亂，但堅持下來，這是適合你的。 如果你正秘密地進行一些事情，月亮卡牌是一個好預兆。這也將告訴你如何接受新的事情和新的可能性。'
    ),
    (
        'src="tarot_images/19.jpg"',
        '太陽: 你在怕事情似乎變得太好，突然太多的快樂和喜悅。好好享受它吧，有時我們總可以無憂無慮吧？！ 如果你一直不舒服，這是身體回復健康的時間。也許你害怕事情不會變得更好。請你有信心，你即將進入一個歡樂愉快的時光。 太陽卡牌表示著困難的結束，現正是時候與朋友和親人一起慶祝。 好消息將會來到你周圍的孩子身旁，或是盼望已久的嬰兒即將受孕或誕生。'
    ),
    (
        'src="tarot_images/20.jpg"',
        '審判: 如果你讓恐懼阻止你接受新的機會，那麼你將失去前進的可能。 不要忽略呈現在你面前的新機會，可能是一個新決定，新的工作或新的關係。特別在這個關鍵時候不要拒絕改變，這次變化是至關重要的，正面恐懼和前進吧。 結果很可能會被延遲。然而，而在適合積極行動，而不是被動的時候。'
    ),
    (
        'src="tarot_images/21.jpg"',
        '世界: 你現在正尋找努力過後的成果。世界卡牌的出現，表示你的事情已經圓滿，或是指日可待。 這在是完成和滿足的時候，事情的發展已到了最後一章。 你已經做得最好，並達到終點。'
    );
;
INSERT INTO bookingdayava (tarot_img, reading, start_date, end_date)
VALUES (
        '塔羅占卜',
        '1',
        '2022-06-13',
        '2022-06-13',
        'avaliable'
    );
drop table consult_questions;
drop table orders;
drop table users;
drop table bookingdayava;
drop table bookingcategory;
drop table tarotgame;