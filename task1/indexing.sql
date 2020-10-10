/* experiment with indexing
applied index on address attribute of Leases table*/

use university_accomodation;
select * from university_accomodation.Leases;

select * from Leases where Lease_Number=2;
select * from Leases where Address like '%Hall%';
