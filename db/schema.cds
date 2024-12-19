namespace my.bookshop;

entity Books {
  key ID              : Integer;
      title           : String;
      stock           : Integer;
      quality         : Association to Qualities
                          on quality.quality = quality.quality;
      quality_quality : type of Qualities : quality;
}

entity Qualities {
  key quality : String enum {
        good = 'G';
        bad  = 'B';
      };
}
