#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@implementation DeleteType

+ (GtkDeleteType)chars {
	return GTK_DELETE_CHARS;
}

+ (GtkDeleteType)wordEnds {
	return GTK_DELETE_WORD_ENDS;
}

+ (GtkDeleteType)words {
	return GTK_DELETE_WORDS;
}

+ (GtkDeleteType)displayLines {
	return GTK_DELETE_DISPLAY_LINES;
}

+ (GtkDeleteType)displayLineEnds {
	return GTK_DELETE_DISPLAY_LINE_ENDS;
}

+ (GtkDeleteType)paragraphEnds {
	return GTK_DELETE_PARAGRAPH_ENDS;
};

+ (GtkDeleteType)paragraphs {
	return GTK_DELETE_PARAGRAPHS;
}

+ (GtkDeleteType)whitespace {
	return GTK_DELETE_WHITESPACE;
}

@end
