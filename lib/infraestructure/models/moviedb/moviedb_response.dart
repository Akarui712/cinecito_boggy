class MoviedbResponse 
{
  final int page;
  final Dates? dates;
  

  MoviedbResponse
  ({
    required this.page,
    required this.dates,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
}