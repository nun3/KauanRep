import InputComponent from '../inputComponent';
import PInputMaskComponent from '../pinputmaskComponent';
import TextAreaComponent from '../textareaComponent';
import PCalendarComponent from '../pcalendarComponent';
import PAutoCompleteComponent from '../pautocompleteComponent';
import PEditorComponent from '../peditorComponent';

const componentTypeMap = {
    'input': new InputComponent(),
    'p-inputmask': new PInputMaskComponent(),
    'textarea': new TextAreaComponent(),
    'p-calendar': new PCalendarComponent(),
    'p-autocomplete': new PAutoCompleteComponent(),
    'p-editor': new PEditorComponent(),
};

function getAllMappedComponents() {
    return Object.keys(componentTypeMap).join(', ');
}

export default {componentTypeMap, getAllMappedComponents};