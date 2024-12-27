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
  
  class StackEntry {
    var type : Int = 0
    private var E1 : Int = 0
    private var E2 : Int = 0
    private var E3 : Int = 0
    private var E4 : Int = 0
    
    // first union member
    /* byte code position */
    func setStatePCode(_ pcode : Int) {
      E1 = pcode;
    }
    func getStatePCode() -> Int {
      return E1;
    }
    /* string position */
    func setStatePStr(_ pstr : Int) {
      E2 = pstr;
    }
    func getStatePStr() -> Int{
      return E2;
    }
    /* previous char position of pstr */
    func setStatePStrPrev(_ pstrPrev : Int) {
      E3 = pstrPrev;
    }
    func getStatePStrPrev() -> Int {
      return E3;
    }
    
    func setPKeep(_ pkeep : Int) {
      E4 = pkeep;
    }
    func getPKeep() -> Int{
      return E4;
    }
    
    // second union member
    /* for OP_REPEAT_INC, OP_REPEAT_INC_NG */
    func setRepeatCount(_ count : Int) {
      E1 = count;
    }
    func getRepeatCount() -> Int{
      return E1;
    }
    func decreaseRepeatCount() {
      E1 -= 1
    }
    func increaseRepeatCount() {
      E1 += 1
    }
    /* byte code position (head of repeated target) */
    func setRepeatPCode(_ pcode : Int) {
      E2 = pcode;
    }
    func getRepeatPCode() -> Int {
      return E2;
    }
    /* repeat id */
    func setRepeatNum(_ num : Int) {
      E3 = num;
    }
    func getRepeatNum() -> Int {
      return E3;
    }
    
    // third union member
    /* index of stack */ /*int repeat_inc struct*/
    func setSi(_ si : Int) {
      E1 = si;
    }
    func getSi() -> Int {
      return E1;
    }
    
    // fourth union member
    /* memory num */
    func setMemNum(_ num : Int) {
      E1 = num;
    }
    func getMemNum() -> Int {
      return E1;
    }
    /* start/end position */
    func setMemPstr(_ pstr : Int) {
      E2 = pstr;
    }
    func getMemPStr() -> Int {
      return E2;
    }
    
    /* Following information is set, if this stack type is MEM-START */
    /* prev. info (for backtrack  "(...)*" ) */
    func setMemStart(_ start : Int) {
      E3 = start;
    }
    func getMemStart() -> Int{
      return E3;
    }
    /* prev. info (for backtrack  "(...)*" ) */
    func setMemEnd(_ end : Int) {
      E4 = end;
    }
    func getMemEnd() -> Int {
      return E4;
    }
    
    // fifth union member
    /* null check id */
    func setNullCheckNum(_ num : Int) {
      E1 = num;
    }
    func getNullCheckNum() -> Int {
      return E1;
    }
    /* start position */
    func setNullCheckPStr(_ pstr : Int) {
      E2 = pstr;
    }
    func getNullCheckPStr() -> Int {
      return E2;
    }
    
    // sixth union member
    /* byte code position */
    func setCallFrameRetAddr(_ addr : Int) {
      E1 = addr;
    }
    func getCallFrameRetAddr() -> Int {
      return E1;
    }
    /* null check id */
    func setCallFrameNum(_ num : Int) {
      E2 = num;
    }
    func getCallFrameNum() -> Int {
      return E2;
    }
    /* string position */
    func setCallFramePStr(_ pstr : Int) {
      E3 = pstr;
    }
    func getCallFramePStr() -> Int {
      return E3;
    }
    
    /* absent position */
    func setAbsentStr(_ pos : Int) {
      E1 = pos;
    }
    func getAbsentStr() -> Int {
      return E1;
    }
    
    func setAbsentEndStr(_ pos : Int) {
      E2 = pos;
    }
    func getAbsentEndStr() -> Int {
      return E2;
    }
  }
}
