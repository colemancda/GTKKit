#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>

@interface GTKComboBox : GTKBin {

}

- (void)appendString:(OFString *)string withIdentifierString:(OFString *)id;

- (void)prependString:(OFString *)string withIdentifierString:(OFString *)id;

- (void)insertString:(OFString *)string withIdentifierString:(OFString *)id atPosition:(int)position;

@end