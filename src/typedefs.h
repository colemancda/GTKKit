/**
 * \file typedefs.h
 * \brief Type definition statements.
 */

/**
 * \typedef GTKCallback
 *
 * GTKCallback is a typedef for a block which is used as a callback in response
 * to a GTK+ signal. This is used when defining the type of a block parameter
 * in a method signature or instance variable.
 */
typedef void (^GTKCallback)();
