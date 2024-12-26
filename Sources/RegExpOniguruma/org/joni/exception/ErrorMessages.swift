/*
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is furnished to do
 * so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
extension org.joni.exception {
  
  public class ErrorMessages : org.jcodings.jexception.jErrorMessages {
    /* internal error */
    static let PARSER_BUG = "internal parser error (bug)";
    static let UNDEFINED_BYTECODE = "undefined bytecode (bug)";
    static let UNEXPECTED_BYTECODE = "unexpected bytecode (bug)";
    static let TOO_MANY_CAPTURE_GROUPS = "too many capture groups are specified";
    
    /* general error */
    static let INVALID_ARGUMENT = "invalid argument";
    
    /* syntax error */
    static let REGEX_TOO_LONG = "regex length too long";
    static let END_PATTERN_AT_LEFT_BRACE = "end pattern at left brace";
    static let END_PATTERN_AT_LEFT_BRACKET = "end pattern at left bracket";
    static let EMPTY_CHAR_CLASS = "empty char-class";
    static let PREMATURE_END_OF_CHAR_CLASS = "premature end of char-class";
    static let END_PATTERN_AT_ESCAPE = "end pattern at escape";
    static let END_PATTERN_AT_META = "end pattern at meta";
    static let END_PATTERN_AT_CONTROL = "end pattern at control";
    static let META_CODE_SYNTAX = "invalid meta-code syntax";
    static let CONTROL_CODE_SYNTAX = "invalid control-code syntax";
    static let CHAR_CLASS_VALUE_AT_END_OF_RANGE = "char-class value at end of range";
    static let CHAR_CLASS_VALUE_AT_START_OF_RANGE = "char-class value at start of range";
    static let UNMATCHED_RANGE_SPECIFIER_IN_CHAR_CLASS = "unmatched range specifier in char-class";
    static let TARGET_OF_REPEAT_OPERATOR_NOT_SPECIFIED = "target of repeat operator is not specified";
    static let TARGET_OF_REPEAT_OPERATOR_INVALID = "target of repeat operator is invalid";
    static let NESTED_REPEAT_NOT_ALLOWED = "nested repeat is not allowed";
    static let NESTED_REPEAT_OPERATOR = "nested repeat operator";
    static let UNMATCHED_CLOSE_PARENTHESIS = "unmatched close parenthesis";
    static let END_PATTERN_WITH_UNMATCHED_PARENTHESIS = "end pattern with unmatched parenthesis";
    static let END_PATTERN_IN_GROUP = "end pattern in group";
    static let UNDEFINED_GROUP_OPTION = "undefined group option";
    static let INVALID_POSIX_BRACKET_TYPE = "invalid POSIX bracket type";
    static let INVALID_LOOK_BEHIND_PATTERN = "invalid pattern in look-behind";
    static let INVALID_REPEAT_RANGE_PATTERN = "invalid repeat range {lower,upper}";
    static let INVALID_CONDITION_PATTERN = "invalid conditional pattern";
    
    /* values error (syntax error) */
    static let TOO_BIG_NUMBER = "too big number";
    static let TOO_BIG_NUMBER_FOR_REPEAT_RANGE = "too big number for repeat range";
    static let UPPER_SMALLER_THAN_LOWER_IN_REPEAT_RANGE = "upper is smaller than lower in repeat range";
    static let EMPTY_RANGE_IN_CHAR_CLASS = "empty range in char class";
    static let MISMATCH_CODE_LENGTH_IN_CLASS_RANGE = "mismatch multibyte code length in char-class range";
    static let TOO_MANY_MULTI_BYTE_RANGES = "too many multibyte code ranges are specified";
    static let TOO_SHORT_MULTI_BYTE_STRING = "too short multibyte code string";
    static let TOO_BIG_BACKREF_NUMBER = "too big backref number";
    static let INVALID_BACKREF = org.joni.Config.USE_NAMED_GROUP ? "invalid backref number/name" : "invalid backref number";
    static let NUMBERED_BACKREF_OR_CALL_NOT_ALLOWED = "numbered backref/call is not allowed. (use name)";
    static let TOO_SHORT_DIGITS = "too short digits";
    static let INVALID_WIDE_CHAR_VALUE = "invalid wide-char value";
    static let EMPTY_GROUP_NAME = "group name is empty";
    static let INVALID_GROUP_NAME = "invalid group name <%n>";
    static let INVALID_CHAR_IN_GROUP_NAME = org.joni.Config.USE_NAMED_GROUP ? "invalid char in group name <%n>" : "invalid char in group number <%n>";
    static let UNDEFINED_NAME_REFERENCE = "undefined name <%n> reference";
    static let UNDEFINED_GROUP_REFERENCE = "undefined group <%n> reference";
    static let MULTIPLEX_DEFINED_NAME = "multiplex defined name <%n>";
    static let MULTIPLEX_DEFINITION_NAME_CALL = "multiplex definition name <%n> call";
    static let PROPERTY_NAME_NEVER_TERMINATED = "property name never terminated \\p{%n";
    static let NEVER_ENDING_RECURSION = "never ending recursion";
    static let GROUP_NUMBER_OVER_FOR_CAPTURE_HISTORY = "group number is too big for capture history";
    static let NOT_SUPPORTED_ENCODING_COMBINATION = "not supported encoding combination";
    static let INVALID_COMBINATION_OF_OPTIONS = "invalid combination of options";
    static let OVER_THREAD_PASS_LIMIT_COUNT = "over thread pass limit count";
    static let TOO_BIG_SB_CHAR_VALUE = "too big singlebyte char value";
    
  }
}
