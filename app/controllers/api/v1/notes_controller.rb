class Api::V1::NotesController < ApplicationController
  def index
    notes = Note.all 
    render json: notes
  end

  def show
    note = Note.find_by_id(params[:id])
    render json: note
  end


  def create
    note = Note.new(note_params)
      
    if note.save 
      render json: note
    else
      render json: {error: "note requires a title, subject, and content!"}, status: 403 
    end
  end

  def update
    note = Note.find_by_id(params[:id])
    if note.update(note_params)
        render json: note
    else 
        render json: {error: note.errors.full_messages}
    end
  end

  def destroy
    note = Note.find_by_id(params[:id])
    if note.destroy
      render json: note
    else 
      render json: {error: note.errors.full_messages}
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :subject, :content, :user_id)
  end



end
