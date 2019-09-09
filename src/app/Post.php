<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
    //
    protected $fillable = [
        'name','role_id','post_title','post_description', 'post_image','post_cat_id','photo_id'
    ];
    public function photo(){
        return $this->belongsTo("App\Photo");
    }
    public function role(){
        return $this->belongsTo("App\Role");
    }
    public function category(){
        return $this->belongsTo('App\Postcategory',"post_cat_id");
    }

    use Sluggable;

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'post_title',
                'onUpdate' => true,
            ]
        ];
    }
}
