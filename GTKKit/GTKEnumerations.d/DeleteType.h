#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface DeleteType : OFObject

+ (GtkDeleteType)chars;

+ (GtkDeleteType)wordEnds;

+ (GtkDeleteType)words;

+ (GtkDeleteType)displayLines;

+ (GtkDeleteType)displayLineEnds;

+ (GtkDeleteType)paragraphEnds;

+ (GtkDeleteType)paragraphs;

+ (GtkDeleteType)whitespace;

@end
