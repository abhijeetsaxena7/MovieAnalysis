movie = load '/user/abhijeet/movies_data.txt' using PigStorage(',') as (id:int, m_name:chararray, year:int, rating:float, length:int);

--group all for manipulation by for each
grp = group movie ALL;

--compute avg rating
avg_rating = foreach grp generate AVG(movie.rating) as avg_rating;

--get movies having length 1.5hrs
m_len = filter movie by length > 5400;

--get movies above and below avg rating

--liked movies
m_abr = filter m_len by rating >= avg_rating.avg_rating;
--less liked movies
m_ber = filter m_len by rating < avg_rating.avg_rating;

m_abr_sort = order m_abr by rating;
m_ber_sort = order m_ber by rating;

store m_abr_sort into '/user/abhijeet/m_abr' using PigStorage(',');
store m_ber_sort into '/user/abhijeet/m_ber' using PigStorage(',');









