--https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

--TODO


    select  
    tbl_submissions.hacker_id,
    max(tbl_hackers.name)
    from submissions tbl_submissions 
    inner join hackers tbl_hackers on tbl_hackers.hacker_id = tbl_submissions.hacker_id
    inner join challenges tbl_challenges on tbl_challenges.challenge_id =   tbl_submissions.challenge_id
    inner join difficulty tbl_difficulty on tbl_difficulty.score = tbl_submissions.score
    where 
    (tbl_difficulty.difficulty_level = 1 and tbl_difficulty.score = 20 or tbl_difficulty.difficulty_level = 2 and tbl_difficulty.score = 30 or
    tbl_difficulty.difficulty_level = 3 and tbl_difficulty.score = 40 or
    tbl_difficulty.difficulty_level = 4 and tbl_difficulty.score = 60 or tbl_difficulty.difficulty_level = 5 and tbl_difficulty.score = 80 or
    tbl_difficulty.difficulty_level = 6 and tbl_difficulty.score = 100 or
    tbl_difficulty.difficulty_level = 7 and tbl_difficulty.score = 120) 
    group by tbl_submissions.hacker_id
    having(count(tbl_submissions.hacker_id) > 2)
    order by count(tbl_submissions.hacker_id) desc, tbl_submissions.hacker_id asc

