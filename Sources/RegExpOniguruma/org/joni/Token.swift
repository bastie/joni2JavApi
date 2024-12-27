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
extension org.joni {
  
  final class Token {
    var type : org.joni.constants.internals.TokenType = .none
    var escaped : Bool = true
    var base : Int = 0              /* is number: 8, 16 (used in [....]) */
    var backP : Int = 0
    
    // union fields
    private var INT1 : Int = 0
    private var INT2 : Int = 0
    private var INT3 : Int = 0
    private var INT4 : Int = 0
    private var INT5 : Int = 0
    private var INTA1: [Int] = []
        
    // union accessors
    func getC() -> Int{
      return INT1;
    }
    func setC(_ c : Int) {
      INT1 = c;
    }
    
    func getCode() -> Int{
      return INT1;
    }
    func setCode(_ code : Int) {
      INT1 = code;
    }
    
    func getAnchorSubtype() -> Int{
      return INT1;
    }
    func setAnchorSubtype(_ anchor : Int) {
      INT1 = anchor;
    }
    
    func getAnchorASCIIRange() -> Bool{
      return INT2 == 1;
    }
    
    func setAnchorASCIIRange(_ ascii : Bool) {
      INT2 = ascii ? 1 : 0;
    }
    
    // repeat union member
    func getRepeatLower() -> Int{
      return INT1;
    }
    func setRepeatLower(_ lower : Int) {
      INT1 = lower;
    }
    
    func getRepeatUpper() -> Int{
      return INT2;
    }
    func setRepeatUpper(_ upper : Int) {
      INT2 = upper;
    }
    
    func getRepeatGreedy() -> Bool{
      return INT3 != 0;
    }
    func setRepeatGreedy(_ greedy : Bool) {
      INT3 = greedy ? 1 : 0;
    }
    
    func getRepeatPossessive() -> Bool {
      return INT4 != 0;
    }
    func setRepeatPossessive(_ possessive : Bool) {
      INT4 = possessive ? 1 : 0;
    }
    
    // backref union member
    func getBackrefNum() -> Int{
      return INT1;
    }
    func setBackrefNum(_ num : Int) {
      INT1 = num;
    }
    
    func getBackrefRef1() -> Int{
      return INT2;
    }
    func setBackrefRef1(_ ref1 : Int) {
      INT2 = ref1;
    }
    
    func getBackrefRefs() -> [Int]{
      return INTA1;
    }
    func setBackrefRefs(_ refs : [Int]) {
      INTA1 = refs;
    }
    
    func getBackrefByName() -> Bool{
      return INT3 != 0;
    }
    func setBackrefByName(_ byName : Bool) {
      INT3 = byName ? 1 : 0;
    }
    
    // USE_BACKREF_AT_LEVEL
    func getBackrefExistLevel() -> Bool{
      return INT4 != 0;
    }
    func setBackrefExistLevel(_ existLevel : Bool) {
      INT4 = existLevel ? 1 : 0;
    }
    
    func getBackrefLevel() -> Int{
      return INT5;
    }
    func setBackrefLevel(_ level : Int) {
      INT5 = level;
    }
    
    // call union member
    func getCallNameP() -> Int {
      return INT1;
    }
    func setCallNameP(_ nameP : Int) {
      INT1 = nameP;
    }
    
    func getCallNameEnd() -> Int{
      return INT2;
    }
    func setCallNameEnd(_ nameEnd : Int) {
      INT2 = nameEnd;
    }
    
    func getCallGNum() -> Int{
      return INT3;
    }
    func setCallGNum(_ gnum : Int) {
      INT3 = gnum;
    }
    
    func getCallRel() -> Bool{
      return INT4 != 0;
    }
    func setCallRel(_ rel : Bool) {
      INT4 = rel ? 1 : 0;
    }
    
    // prop union member
    func getPropCType() -> Int{
      return INT1;
    }
    func setPropCType(_ ctype : Int) {
      INT1 = ctype;
    }
    
    func getPropNot() -> Bool{
      return INT2 != 0;
    }
    func setPropNot(_ not : Bool) {
      INT2 = not ? 1 : 0;
    }
  }
}
